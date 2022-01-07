
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int uc ;
struct TYPE_20__ {int dwContext; int children; } ;
struct TYPE_23__ {int lstnSocket; TYPE_10__ hdr; TYPE_5__* lpAppInfo; int lpszUserName; int serverport; int servername; TYPE_4__* download_in_progress; } ;
typedef TYPE_3__ ftp_session_t ;
struct TYPE_22__ {void* hInternet; int entry; void* dwContext; scalar_t__ dwFlags; int htype; } ;
struct TYPE_24__ {scalar_t__ cache_file_handle; TYPE_2__ hdr; int * cache_file; TYPE_3__* lpFtpSession; void* session_deleted; int nDataSocket; } ;
typedef TYPE_4__ ftp_file_t ;
struct TYPE_21__ {int dwFlags; } ;
struct TYPE_25__ {TYPE_1__ hdr; } ;
typedef TYPE_5__ appinfo_t ;
typedef int WCHAR ;
struct TYPE_26__ {int dwStructSize; int * lpszUrlPath; int lpszUserName; int nPort; int lpszHostName; int nScheme; } ;
typedef TYPE_6__ URL_COMPONENTSW ;
struct TYPE_27__ {int dwError; void* dwResult; } ;
typedef int * LPCWSTR ;
typedef TYPE_7__ INTERNET_ASYNC_RESULT ;
typedef int INT ;
typedef void* HINTERNET ;
typedef void* DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef void* BOOL ;


 scalar_t__ CreateFileW (int *,scalar_t__,int ,int *,int ,int ,int *) ;
 scalar_t__ CreateUrlCacheEntryW (int *,int ,int *,int *,int ) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_SUCCESS ;
 void* FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FTPFILEVtbl ;
 scalar_t__ FTP_GetDataSocket (TYPE_3__*,int *) ;
 int FTP_ReceiveRequestData (TYPE_4__*,int ) ;
 void* FTP_SendRetrieve (TYPE_3__*,int *,scalar_t__) ;
 void* FTP_SendStore (TYPE_3__*,int *,scalar_t__) ;
 scalar_t__ GENERIC_READ ;
 scalar_t__ GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 int INTERNET_FLAG_ASYNC ;
 int INTERNET_GetLastError () ;
 int INTERNET_SCHEME_FTP ;
 int INTERNET_STATUS_HANDLE_CREATED ;
 int INTERNET_STATUS_REQUEST_COMPLETE ;
 int INTERNET_SendCallback (TYPE_10__*,int ,int ,TYPE_7__*,int) ;
 int INTERNET_SetLastError (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ InternetCreateUrlW (TYPE_6__*,int ,int *,scalar_t__*) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int TRACE (char*) ;
 int TRUE ;
 int WARN (char*,scalar_t__) ;
 int WH_HFILE ;
 int WININET_AddRef (TYPE_10__*) ;
 TYPE_4__* alloc_object (TYPE_10__*,int *,int) ;
 int closesocket (int) ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;
 void* heap_strdupW (int *) ;
 int list_add_head (int *,int *) ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static HINTERNET FTP_FtpOpenFileW(ftp_session_t *lpwfs,
 LPCWSTR lpszFileName, DWORD fdwAccess, DWORD dwFlags,
 DWORD_PTR dwContext)
{
    INT nDataSocket;
    BOOL bSuccess = FALSE;
    ftp_file_t *lpwh = ((void*)0);
    appinfo_t *hIC = ((void*)0);

    TRACE("\n");


    INTERNET_SetLastError(0);

    if (GENERIC_READ == fdwAccess)
    {

        bSuccess = FTP_SendRetrieve(lpwfs, lpszFileName, dwFlags);
    }
    else if (GENERIC_WRITE == fdwAccess)
    {

        bSuccess = FTP_SendStore(lpwfs, lpszFileName, dwFlags);
    }


    if (bSuccess && FTP_GetDataSocket(lpwfs, &nDataSocket))
    {
        lpwh = alloc_object(&lpwfs->hdr, &FTPFILEVtbl, sizeof(ftp_file_t));
        lpwh->hdr.htype = WH_HFILE;
        lpwh->hdr.dwFlags = dwFlags;
        lpwh->hdr.dwContext = dwContext;
        lpwh->nDataSocket = nDataSocket;
        lpwh->cache_file = ((void*)0);
        lpwh->cache_file_handle = INVALID_HANDLE_VALUE;
        lpwh->session_deleted = FALSE;

        WININET_AddRef( &lpwfs->hdr );
        lpwh->lpFtpSession = lpwfs;
        list_add_head( &lpwfs->hdr.children, &lpwh->hdr.entry );


 lpwfs->download_in_progress = lpwh;
    }

    if (lpwfs->lstnSocket != -1)
    {
        closesocket(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }

    if (bSuccess && fdwAccess == GENERIC_READ)
    {
        WCHAR filename[MAX_PATH + 1];
        URL_COMPONENTSW uc;
        DWORD len;

        memset(&uc, 0, sizeof(uc));
        uc.dwStructSize = sizeof(uc);
        uc.nScheme = INTERNET_SCHEME_FTP;
        uc.lpszHostName = lpwfs->servername;
        uc.nPort = lpwfs->serverport;
        uc.lpszUserName = lpwfs->lpszUserName;
        uc.lpszUrlPath = heap_strdupW(lpszFileName);

        if (!InternetCreateUrlW(&uc, 0, ((void*)0), &len) && GetLastError() == ERROR_INSUFFICIENT_BUFFER)
        {
            WCHAR *url = heap_alloc(len * sizeof(WCHAR));

            if (url && InternetCreateUrlW(&uc, 0, url, &len) && CreateUrlCacheEntryW(url, 0, ((void*)0), filename, 0))
            {
                lpwh->cache_file = heap_strdupW(filename);
                lpwh->cache_file_handle = CreateFileW(filename, GENERIC_WRITE, FILE_SHARE_READ,
                                                      ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
                if (lpwh->cache_file_handle == INVALID_HANDLE_VALUE)
                {
                    WARN("Could not create cache file: %u\n", GetLastError());
                    heap_free(lpwh->cache_file);
                    lpwh->cache_file = ((void*)0);
                }
            }
            heap_free(url);
        }
        heap_free(uc.lpszUrlPath);
    }

    hIC = lpwfs->lpAppInfo;
    if (hIC->hdr.dwFlags & INTERNET_FLAG_ASYNC)
    {
        INTERNET_ASYNC_RESULT iar;

 if (lpwh)
 {
            iar.dwResult = (DWORD_PTR)lpwh->hdr.hInternet;
            iar.dwError = ERROR_SUCCESS;
            INTERNET_SendCallback(&lpwfs->hdr, lpwfs->hdr.dwContext, INTERNET_STATUS_HANDLE_CREATED,
                &iar, sizeof(INTERNET_ASYNC_RESULT));
 }

        if(bSuccess) {
            FTP_ReceiveRequestData(lpwh, TRUE);
        }else {
            iar.dwResult = 0;
            iar.dwError = INTERNET_GetLastError();
            INTERNET_SendCallback(&lpwfs->hdr, lpwfs->hdr.dwContext, INTERNET_STATUS_REQUEST_COMPLETE,
                    &iar, sizeof(INTERNET_ASYNC_RESULT));
        }
    }

    if(!bSuccess)
        return FALSE;

    return lpwh->hdr.hInternet;
}
