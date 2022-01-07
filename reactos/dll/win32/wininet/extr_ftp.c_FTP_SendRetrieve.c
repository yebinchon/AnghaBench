
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
 int FTP_CMD_RETR ;
 int FTP_InitListenSocket (TYPE_2__*) ;
 int FTP_ReceiveResponse (TYPE_2__*,int ) ;
 int FTP_SendCommand (int ,int ,int ,int ,int ,int ) ;
 int FTP_SendPortOrPasv (TYPE_2__*) ;
 int FTP_SendType (TYPE_2__*,int ) ;
 int FTP_SetResponseError (int) ;
 int TRACE (char*) ;
 int closesocket (int) ;

__attribute__((used)) static BOOL FTP_SendRetrieve(ftp_session_t *lpwfs, LPCWSTR lpszRemoteFile, DWORD dwType)
{
    INT nResCode;
    BOOL ret;

    TRACE("\n");
    if (!(ret = FTP_InitListenSocket(lpwfs)))
        goto lend;

    if (!(ret = FTP_SendType(lpwfs, dwType)))
        goto lend;

    if (!(ret = FTP_SendPortOrPasv(lpwfs)))
        goto lend;

    if (!(ret = FTP_SendCommand(lpwfs->sndSocket, FTP_CMD_RETR, lpszRemoteFile, 0, 0, 0)))
        goto lend;

    nResCode = FTP_ReceiveResponse(lpwfs, lpwfs->hdr.dwContext);
    if ((nResCode != 125) && (nResCode != 150)) {

        FTP_SetResponseError(nResCode);
 ret = FALSE;
    }

lend:
    if (!ret && lpwfs->lstnSocket != -1)
    {
        closesocket(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }

    return ret;
}
