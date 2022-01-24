#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ decoding; } ;
struct TYPE_13__ {char content_length; scalar_t__ content_read; } ;
struct TYPE_17__ {scalar_t__ status_code; char contentLength; int /*<<< orphan*/  headers_section; TYPE_4__* custHeaders; TYPE_3__ hdr; TYPE_2__* data_stream; scalar_t__ read_pos; scalar_t__ read_size; scalar_t__ read_buf; TYPE_1__ netconn_stream; int /*<<< orphan*/  verb; } ;
typedef  TYPE_5__ http_request_t ;
typedef  int /*<<< orphan*/  encoding ;
struct TYPE_14__ {int /*<<< orphan*/ * vtbl; } ;
struct TYPE_18__ {TYPE_2__ data_stream; scalar_t__ buf_size; int /*<<< orphan*/  buf; int /*<<< orphan*/  state; scalar_t__ chunk_size; scalar_t__ buf_pos; } ;
typedef  TYPE_6__ chunked_stream_t ;
typedef  char WCHAR ;
struct TYPE_16__ {char* lpszValue; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNKED_STREAM_STATE_READING_CHUNK_SIZE ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int HTTP_QUERY_CONTENT_LENGTH ; 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int HTTP_QUERY_TRANSFER_ENCODING ; 
 scalar_t__ HTTP_STATUS_NO_CONTENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  chunked_stream_vtbl ; 
 TYPE_6__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  szContent_Encoding ; 

__attribute__((used)) static DWORD FUNC10(http_request_t *request)
{
    static const WCHAR szChunked[] = {'c','h','u','n','k','e','d',0};
    static const WCHAR headW[] = {'H','E','A','D',0};
    WCHAR encoding[20];
    DWORD size;

    if(request->status_code == HTTP_STATUS_NO_CONTENT || !FUNC8(request->verb, headW)) {
        request->contentLength = request->netconn_stream.content_length = 0;
        return ERROR_SUCCESS;
    }

    size = sizeof(request->contentLength);
    if (FUNC3(request, HTTP_QUERY_FLAG_NUMBER|HTTP_QUERY_CONTENT_LENGTH,
                            &request->contentLength, &size, NULL) != ERROR_SUCCESS)
        request->contentLength = ~0u;
    request->netconn_stream.content_length = request->contentLength;
    request->netconn_stream.content_read = request->read_size;

    size = sizeof(encoding);
    if (FUNC3(request, HTTP_QUERY_TRANSFER_ENCODING, encoding, &size, NULL) == ERROR_SUCCESS &&
        !FUNC9(encoding, szChunked))
    {
        chunked_stream_t *chunked_stream;

        chunked_stream = FUNC5(sizeof(*chunked_stream));
        if(!chunked_stream)
            return ERROR_OUTOFMEMORY;

        chunked_stream->data_stream.vtbl = &chunked_stream_vtbl;
        chunked_stream->buf_size = chunked_stream->buf_pos = 0;
        chunked_stream->chunk_size = 0;
        chunked_stream->state = CHUNKED_STREAM_STATE_READING_CHUNK_SIZE;

        if(request->read_size) {
            FUNC7(chunked_stream->buf, request->read_buf+request->read_pos, request->read_size);
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

        FUNC0( &request->headers_section );

        encoding_idx = FUNC2(request, szContent_Encoding, 0, FALSE);
        if(encoding_idx != -1) {
            if(!FUNC9(request->custHeaders[encoding_idx].lpszValue, gzipW)) {
                FUNC1(request, encoding_idx);
                FUNC4( &request->headers_section );
                return FUNC6(request, TRUE);
            }
            if(!FUNC9(request->custHeaders[encoding_idx].lpszValue, deflateW)) {
                FUNC1(request, encoding_idx);
                FUNC4( &request->headers_section );
                return FUNC6(request, FALSE);
            }
        }

        FUNC4( &request->headers_section );
    }

    return ERROR_SUCCESS;
}