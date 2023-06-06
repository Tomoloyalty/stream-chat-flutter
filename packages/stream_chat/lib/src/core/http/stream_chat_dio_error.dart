import 'package:dio/dio.dart';
import 'package:stream_chat/src/core/error/error.dart';

/// Error class specific to StreamChat and Dio
class StreamChatDioError extends DioException {
  /// Initialize a stream chat dio error
  StreamChatDioError({
    required this.error,
    required RequestOptions requestOptions,
    Response? response,
    DioErrorType type = DioExceptionType.unknown,
  }) : super(
          error: error,
          requestOptions: requestOptions,
          response: response,
          type: type,
        );

  @override
  final StreamChatNetworkError error;
}
