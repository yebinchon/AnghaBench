
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_request_t ;
typedef int data_stream_t ;
struct TYPE_2__ {scalar_t__ state; } ;
typedef TYPE_1__ chunked_stream_t ;
typedef int buf ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ CHUNKED_STREAM_STATE_END_OF_STREAM ;
 scalar_t__ CHUNKED_STREAM_STATE_ERROR ;
 scalar_t__ ERROR_NO_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ chunked_read (int *,int *,int *,int,scalar_t__*,int ) ;

__attribute__((used)) static DWORD chunked_drain_content(data_stream_t *stream, http_request_t *req, BOOL allow_blocking)
{
    chunked_stream_t *chunked_stream = (chunked_stream_t*)stream;
    BYTE buf[1024];
    DWORD size, res;

    while(chunked_stream->state != CHUNKED_STREAM_STATE_END_OF_STREAM
          && chunked_stream->state != CHUNKED_STREAM_STATE_ERROR) {
        res = chunked_read(stream, req, buf, sizeof(buf), &size, allow_blocking);
        if(res != ERROR_SUCCESS)
            return res;
    }

    if(chunked_stream->state != CHUNKED_STREAM_STATE_END_OF_STREAM)
        return ERROR_NO_DATA;
    return ERROR_SUCCESS;
}
