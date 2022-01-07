
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dwContext; } ;
struct TYPE_9__ {int lstnSocket; TYPE_1__ hdr; int sndSocket; } ;
typedef TYPE_2__ ftp_session_t ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FTP_CMD_STOR ;
 int FTP_InitListenSocket (TYPE_2__*) ;
 int FTP_ReceiveResponse (TYPE_2__*,int ) ;
 int FTP_SendCommand (int ,int ,int ,int ,int ,int ) ;
 int FTP_SendPortOrPasv (TYPE_2__*) ;
 int FTP_SendType (TYPE_2__*,int ) ;
 int FTP_SetResponseError (int) ;
 int TRACE (char*) ;
 int TRUE ;
 int closesocket (int) ;

__attribute__((used)) static BOOL FTP_SendStore(ftp_session_t *lpwfs, LPCWSTR lpszRemoteFile, DWORD dwType)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    TRACE("\n");
    if (!FTP_InitListenSocket(lpwfs))
        goto lend;

    if (!FTP_SendType(lpwfs, dwType))
        goto lend;

    if (!FTP_SendPortOrPasv(lpwfs))
        goto lend;

    if (!FTP_SendCommand(lpwfs->sndSocket, FTP_CMD_STOR, lpszRemoteFile, 0, 0, 0))
     goto lend;
    nResCode = FTP_ReceiveResponse(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
    {
        if (nResCode == 150 || nResCode == 125)
            bSuccess = TRUE;
 else
            FTP_SetResponseError(nResCode);
    }

lend:
    if (!bSuccess && lpwfs->lstnSocket != -1)
    {
        closesocket(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }

    return bSuccess;
}
