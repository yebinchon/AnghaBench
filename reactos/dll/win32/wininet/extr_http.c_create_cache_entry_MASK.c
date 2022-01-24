#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  no_storeW ;
typedef  int /*<<< orphan*/  no_cacheW ;
struct TYPE_14__ {int dwFlags; } ;
struct TYPE_16__ {unsigned int contentLength; TYPE_5__* data_stream; scalar_t__ read_size; scalar_t__ read_pos; scalar_t__ read_buf; int /*<<< orphan*/ * hCacheFile; TYPE_7__* req_file; TYPE_2__ hdr; int /*<<< orphan*/  headers_section; TYPE_1__* custHeaders; } ;
typedef  TYPE_4__ http_request_t ;
typedef  char WCHAR ;
struct TYPE_18__ {char* url; } ;
struct TYPE_17__ {TYPE_3__* vtbl; } ;
struct TYPE_15__ {scalar_t__ (* end_of_data ) (TYPE_5__*,TYPE_4__*) ;} ;
struct TYPE_13__ {char* lpszValue; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,unsigned int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int INTERNET_FLAG_NEED_FILE ; 
 int INTERNET_FLAG_NO_CACHE_WRITE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 char* FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 char* FUNC14 (char*,char) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 scalar_t__ FUNC17 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  szCache_Control ; 

__attribute__((used)) static void FUNC18(http_request_t *req)
{
    static const WCHAR no_cacheW[] = {'n','o','-','c','a','c','h','e',0};
    static const WCHAR no_storeW[] = {'n','o','-','s','t','o','r','e',0};

    WCHAR file_name[MAX_PATH+1];
    WCHAR *url;
    BOOL b = TRUE;

    /* FIXME: We should free previous cache file earlier */
    if(req->req_file) {
        FUNC13(req->req_file);
        req->req_file = NULL;
    }
    if(req->hCacheFile) {
        FUNC0(req->hCacheFile);
        req->hCacheFile = NULL;
    }

    if(req->hdr.dwFlags & INTERNET_FLAG_NO_CACHE_WRITE)
        b = FALSE;

    if(b) {
        int header_idx;

        FUNC3( &req->headers_section );

        header_idx = FUNC6(req, szCache_Control, 0, FALSE);
        if(header_idx != -1) {
            WCHAR *ptr;

            for(ptr=req->custHeaders[header_idx].lpszValue; *ptr; ) {
                WCHAR *end;

                while(*ptr==' ' || *ptr=='\t')
                    ptr++;

                end = FUNC14(ptr, ',');
                if(!end)
                    end = ptr + FUNC15(ptr);

                if(!FUNC16(ptr, no_cacheW, sizeof(no_cacheW)/sizeof(*no_cacheW)-1)
                        || !FUNC16(ptr, no_storeW, sizeof(no_storeW)/sizeof(*no_storeW)-1)) {
                    b = FALSE;
                    break;
                }

                ptr = end;
                if(*ptr == ',')
                    ptr++;
            }
        }

        FUNC7( &req->headers_section );
    }

    if(!b) {
        if(!(req->hdr.dwFlags & INTERNET_FLAG_NEED_FILE))
            return;

        FUNC4("INTERNET_FLAG_NEED_FILE is not supported correctly\n");
    }

    url = FUNC11(req);
    if(!url) {
        FUNC8("Could not get URL\n");
        return;
    }

    b = FUNC2(url, req->contentLength == ~0u ? 0 : req->contentLength, NULL, file_name, 0);
    if(!b) {
        FUNC8("Could not create cache entry: %08x\n", FUNC5());
        return;
    }

    FUNC12(file_name, &req->req_file);
    req->req_file->url = url;

    req->hCacheFile = FUNC1(file_name, GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE,
              NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if(req->hCacheFile == INVALID_HANDLE_VALUE) {
        FUNC8("Could not create file: %u\n", FUNC5());
        req->hCacheFile = NULL;
        return;
    }

    if(req->read_size) {
        DWORD written;

        b = FUNC9(req->hCacheFile, req->read_buf+req->read_pos, req->read_size, &written, NULL);
        if(!b)
            FUNC4("WriteFile failed: %u\n", FUNC5());

        if(req->data_stream->vtbl->end_of_data(req->data_stream, req))
            FUNC10(req);
    }
}