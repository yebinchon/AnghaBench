
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int no_storeW ;
typedef int no_cacheW ;
struct TYPE_14__ {int dwFlags; } ;
struct TYPE_16__ {unsigned int contentLength; TYPE_5__* data_stream; scalar_t__ read_size; scalar_t__ read_pos; scalar_t__ read_buf; int * hCacheFile; TYPE_7__* req_file; TYPE_2__ hdr; int headers_section; TYPE_1__* custHeaders; } ;
typedef TYPE_4__ http_request_t ;
typedef char WCHAR ;
struct TYPE_18__ {char* url; } ;
struct TYPE_17__ {TYPE_3__* vtbl; } ;
struct TYPE_15__ {scalar_t__ (* end_of_data ) (TYPE_5__*,TYPE_4__*) ;} ;
struct TYPE_13__ {char* lpszValue; } ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (int *) ;
 int * CreateFileW (char*,int ,int,int *,int ,int ,int *) ;
 scalar_t__ CreateUrlCacheEntryW (char*,unsigned int,int *,char*,int ) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FIXME (char*,...) ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int HTTP_GetCustomHeaderIndex (TYPE_4__*,int ,int ,scalar_t__) ;
 int INTERNET_FLAG_NEED_FILE ;
 int INTERNET_FLAG_NO_CACHE_WRITE ;
 int * INVALID_HANDLE_VALUE ;
 int LeaveCriticalSection (int *) ;
 int MAX_PATH ;
 scalar_t__ TRUE ;
 int WARN (char*,...) ;
 scalar_t__ WriteFile (int *,scalar_t__,scalar_t__,int *,int *) ;
 int commit_cache_entry (TYPE_4__*) ;
 char* compose_request_url (TYPE_4__*) ;
 int create_req_file (char*,TYPE_7__**) ;
 int req_file_release (TYPE_7__*) ;
 char* strchrW (char*,char) ;
 int strlenW (char*) ;
 int strncmpiW (char*,char const*,int) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_4__*) ;
 int szCache_Control ;

__attribute__((used)) static void create_cache_entry(http_request_t *req)
{
    static const WCHAR no_cacheW[] = {'n','o','-','c','a','c','h','e',0};
    static const WCHAR no_storeW[] = {'n','o','-','s','t','o','r','e',0};

    WCHAR file_name[MAX_PATH+1];
    WCHAR *url;
    BOOL b = TRUE;


    if(req->req_file) {
        req_file_release(req->req_file);
        req->req_file = ((void*)0);
    }
    if(req->hCacheFile) {
        CloseHandle(req->hCacheFile);
        req->hCacheFile = ((void*)0);
    }

    if(req->hdr.dwFlags & INTERNET_FLAG_NO_CACHE_WRITE)
        b = FALSE;

    if(b) {
        int header_idx;

        EnterCriticalSection( &req->headers_section );

        header_idx = HTTP_GetCustomHeaderIndex(req, szCache_Control, 0, FALSE);
        if(header_idx != -1) {
            WCHAR *ptr;

            for(ptr=req->custHeaders[header_idx].lpszValue; *ptr; ) {
                WCHAR *end;

                while(*ptr==' ' || *ptr=='\t')
                    ptr++;

                end = strchrW(ptr, ',');
                if(!end)
                    end = ptr + strlenW(ptr);

                if(!strncmpiW(ptr, no_cacheW, sizeof(no_cacheW)/sizeof(*no_cacheW)-1)
                        || !strncmpiW(ptr, no_storeW, sizeof(no_storeW)/sizeof(*no_storeW)-1)) {
                    b = FALSE;
                    break;
                }

                ptr = end;
                if(*ptr == ',')
                    ptr++;
            }
        }

        LeaveCriticalSection( &req->headers_section );
    }

    if(!b) {
        if(!(req->hdr.dwFlags & INTERNET_FLAG_NEED_FILE))
            return;

        FIXME("INTERNET_FLAG_NEED_FILE is not supported correctly\n");
    }

    url = compose_request_url(req);
    if(!url) {
        WARN("Could not get URL\n");
        return;
    }

    b = CreateUrlCacheEntryW(url, req->contentLength == ~0u ? 0 : req->contentLength, ((void*)0), file_name, 0);
    if(!b) {
        WARN("Could not create cache entry: %08x\n", GetLastError());
        return;
    }

    create_req_file(file_name, &req->req_file);
    req->req_file->url = url;

    req->hCacheFile = CreateFileW(file_name, GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE,
              ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if(req->hCacheFile == INVALID_HANDLE_VALUE) {
        WARN("Could not create file: %u\n", GetLastError());
        req->hCacheFile = ((void*)0);
        return;
    }

    if(req->read_size) {
        DWORD written;

        b = WriteFile(req->hCacheFile, req->read_buf+req->read_pos, req->read_size, &written, ((void*)0));
        if(!b)
            FIXME("WriteFile failed: %u\n", GetLastError());

        if(req->data_stream->vtbl->end_of_data(req->data_stream, req))
            commit_cache_entry(req);
    }
}
