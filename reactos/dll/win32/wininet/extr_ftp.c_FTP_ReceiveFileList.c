
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int children; } ;
struct TYPE_11__ {TYPE_5__ hdr; } ;
typedef TYPE_2__ ftp_session_t ;
typedef int WININETFTPFINDNEXTW ;
struct TYPE_10__ {int * hInternet; int entry; int dwContext; int htype; } ;
struct TYPE_12__ {int index; TYPE_1__ hdr; TYPE_2__* lpFtpSession; int * lpafp; int size; } ;
typedef TYPE_3__* LPWININETFTPFINDNEXTW ;
typedef int LPWIN32_FIND_DATAW ;
typedef int * LPFILEPROPERTIESW ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int * HINTERNET ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int FTPFINDNEXTVtbl ;
 int FTP_ConvertFileProp (int *,int ) ;
 scalar_t__ FTP_ParseDirectory (TYPE_2__*,int ,int ,int **,int *) ;
 int TRACE (char*,TYPE_2__*,...) ;
 int WH_HFTPFINDNEXT ;
 int WININET_AddRef (TYPE_5__*) ;
 TYPE_3__* alloc_object (TYPE_5__*,int *,int) ;
 int debugstr_w (int ) ;
 int list_add_head (int *,int *) ;

__attribute__((used)) static HINTERNET FTP_ReceiveFileList(ftp_session_t *lpwfs, INT nSocket, LPCWSTR lpszSearchFile,
 LPWIN32_FIND_DATAW lpFindFileData, DWORD_PTR dwContext)
{
    DWORD dwSize = 0;
    LPFILEPROPERTIESW lpafp = ((void*)0);
    LPWININETFTPFINDNEXTW lpwfn = ((void*)0);

    TRACE("(%p,%d,%s,%p,%08lx)\n", lpwfs, nSocket, debugstr_w(lpszSearchFile), lpFindFileData, dwContext);

    if (FTP_ParseDirectory(lpwfs, nSocket, lpszSearchFile, &lpafp, &dwSize))
    {
        if(lpFindFileData)
            FTP_ConvertFileProp(lpafp, lpFindFileData);

        lpwfn = alloc_object(&lpwfs->hdr, &FTPFINDNEXTVtbl, sizeof(WININETFTPFINDNEXTW));
        if (lpwfn)
        {
            lpwfn->hdr.htype = WH_HFTPFINDNEXT;
            lpwfn->hdr.dwContext = dwContext;
            lpwfn->index = 1;
            lpwfn->size = dwSize;
            lpwfn->lpafp = lpafp;

            WININET_AddRef( &lpwfs->hdr );
            lpwfn->lpFtpSession = lpwfs;
            list_add_head( &lpwfs->hdr.children, &lpwfn->hdr.entry );
        }
    }

    TRACE("Matched %d files\n", dwSize);
    return lpwfn ? lpwfn->hdr.hInternet : ((void*)0);
}
