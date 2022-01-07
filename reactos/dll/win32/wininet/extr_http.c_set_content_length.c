
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ decoding; } ;
struct TYPE_13__ {char content_length; scalar_t__ content_read; } ;
struct TYPE_17__ {scalar_t__ status_code; char contentLength; int headers_section; TYPE_4__* custHeaders; TYPE_3__ hdr; TYPE_2__* data_stream; scalar_t__ read_pos; scalar_t__ read_size; scalar_t__ read_buf; TYPE_1__ netconn_stream; int verb; } ;
typedef TYPE_5__ http_request_t ;
typedef int encoding ;
struct TYPE_14__ {int * vtbl; } ;
struct TYPE_18__ {TYPE_2__ data_stream; scalar_t__ buf_size; int buf; int state; scalar_t__ chunk_size; scalar_t__ buf_pos; } ;
typedef TYPE_6__ chunked_stream_t ;
typedef char WCHAR ;
struct TYPE_16__ {char* lpszValue; } ;
typedef scalar_t__ DWORD ;


 int CHUNKED_STREAM_STATE_READING_CHUNK_SIZE ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int HTTP_DeleteCustomHeader (TYPE_5__*,int) ;
 int HTTP_GetCustomHeaderIndex (TYPE_5__*,int ,int ,int ) ;
 scalar_t__ HTTP_HttpQueryInfoW (TYPE_5__*,int,char*,scalar_t__*,int *) ;
 int HTTP_QUERY_CONTENT_LENGTH ;
 int HTTP_QUERY_FLAG_NUMBER ;
 int HTTP_QUERY_TRANSFER_ENCODING ;
 scalar_t__ HTTP_STATUS_NO_CONTENT ;
 int LeaveCriticalSection (int *) ;
 int TRUE ;
 int chunked_stream_vtbl ;
 TYPE_6__* heap_alloc (int) ;
 scalar_t__ init_gzip_stream (TYPE_5__*,int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int strcmpW (int ,char const*) ;
 int strcmpiW (char*,char const*) ;
 int szContent_Encoding ;

__attribute__((used)) static DWORD set_content_length(http_request_t *request)
{
    static const WCHAR szChunked[] = {'c','h','u','n','k','e','d',0};
    static const WCHAR headW[] = {'H','E','A','D',0};
    WCHAR encoding[20];
    DWORD size;

    if(request->status_code == HTTP_STATUS_NO_CONTENT || !strcmpW(request->verb, headW)) {
        request->contentLength = request->netconn_stream.content_length = 0;
        return ERROR_SUCCESS;
    }

    size = sizeof(request->contentLength);
    if (HTTP_HttpQueryInfoW(request, HTTP_QUERY_FLAG_NUMBER|HTTP_QUERY_CONTENT_LENGTH,
                            &request->contentLength, &size, ((void*)0)) != ERROR_SUCCESS)
        request->contentLength = ~0u;
    request->netconn_stream.content_length = request->contentLength;
    request->netconn_stream.content_read = request->read_size;

    size = sizeof(encoding);
    if (HTTP_HttpQueryInfoW(request, HTTP_QUERY_TRANSFER_ENCODING, encoding, &size, ((void*)0)) == ERROR_SUCCESS &&
        !strcmpiW(encoding, szChunked))
    {
        chunked_stream_t *chunked_stream;

        chunked_stream = heap_alloc(sizeof(*chunked_stream));
        if(!chunked_stream)
            return ERROR_OUTOFMEMORY;

        chunked_stream->data_stream.vtbl = &chunked_stream_vtbl;
        chunked_stream->buf_size = chunked_stream->buf_pos = 0;
        chunked_stream->chunk_size = 0;
        chunked_stream->state = CHUNKED_STREAM_STATE_READING_CHUNK_SIZE;

        if(request->read_size) {
            memcpy(chunked_stream->buf, request->read_buf+request->read_pos, request->read_size);
            chunked_stream->buf_size = request->read_size;
            request->read_size = request->read_pos = 0;
        }

        request->data_stream = &chunked_stream->data_stream;
        request->contentLength = ~0u;
    }

    if(request->hdr.decoding) {
        int encoding_idx;

        static const WCHAR deflateW[] = {'d','e','f','l','a','t','e',0};
        static const WCHAR gzipW[] = {'g','z','i','p',0};

        EnterCriticalSection( &request->headers_section );

        encoding_idx = HTTP_GetCustomHeaderIndex(request, szContent_Encoding, 0, FALSE);
        if(encoding_idx != -1) {
            if(!strcmpiW(request->custHeaders[encoding_idx].lpszValue, gzipW)) {
                HTTP_DeleteCustomHeader(request, encoding_idx);
                LeaveCriticalSection( &request->headers_section );
                return init_gzip_stream(request, TRUE);
            }
            if(!strcmpiW(request->custHeaders[encoding_idx].lpszValue, deflateW)) {
                HTTP_DeleteCustomHeader(request, encoding_idx);
                LeaveCriticalSection( &request->headers_section );
                return init_gzip_stream(request, FALSE);
            }
        }

        LeaveCriticalSection( &request->headers_section );
    }

    return ERROR_SUCCESS;
}
