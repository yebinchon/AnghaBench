
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* req_file; int last_modified; int expires; int * hCacheFile; } ;
typedef TYPE_2__ http_request_t ;
typedef int WCHAR ;
struct TYPE_6__ {int is_committed; int file_name; int url; } ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseHandle (int *) ;
 scalar_t__ CommitUrlCacheEntryW (int ,int ,int ,int ,int ,int *,int ,int *,int ) ;
 int GetLastError () ;
 int NORMAL_CACHE_ENTRY ;
 int TRACE (char*,TYPE_2__*) ;
 int TRUE ;
 int WARN (char*,int ) ;
 int * build_response_header (TYPE_2__*,int ) ;
 int heap_free (int *) ;
 int strlenW (int *) ;

__attribute__((used)) static void commit_cache_entry(http_request_t *req)
{
    WCHAR *header;
    DWORD header_len;
    BOOL res;

    TRACE("%p\n", req);

    CloseHandle(req->hCacheFile);
    req->hCacheFile = ((void*)0);

    header = build_response_header(req, TRUE);
    header_len = (header ? strlenW(header) : 0);
    res = CommitUrlCacheEntryW(req->req_file->url, req->req_file->file_name, req->expires,
             req->last_modified, NORMAL_CACHE_ENTRY,
            header, header_len, ((void*)0), 0);
    if(res)
        req->req_file->is_committed = TRUE;
    else
        WARN("CommitUrlCacheEntry failed: %u\n", GetLastError());
    heap_free(header);
}
