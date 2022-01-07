
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int dwContext; } ;
struct TYPE_8__ {int S_addr; } ;
struct TYPE_9__ {TYPE_1__ S_un; } ;
struct TYPE_10__ {int sin_port; TYPE_2__ sin_addr; } ;
struct TYPE_12__ {TYPE_4__ hdr; int sndSocket; TYPE_3__ lstnSocketAddress; } ;
typedef TYPE_5__ ftp_session_t ;
typedef char WCHAR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int FTP_CMD_PORT ;
 int FTP_ReceiveResponse (TYPE_5__*,int ) ;
 int FTP_SendCommand (int ,int ,char*,int ,int ,int ) ;
 int FTP_SetResponseError (int) ;
 int TRACE (char*) ;
 int TRUE ;
 int sprintfW (char*,char const*,int,int,int,int,int,int) ;

__attribute__((used)) static BOOL FTP_SendPort(ftp_session_t *lpwfs)
{
    static const WCHAR szIPFormat[] = {'%','d',',','%','d',',','%','d',',','%','d',',','%','d',',','%','d','\0'};
    INT nResCode;
    WCHAR szIPAddress[64];
    BOOL bSuccess = FALSE;
    TRACE("\n");

    sprintfW(szIPAddress, szIPFormat,
  lpwfs->lstnSocketAddress.sin_addr.S_un.S_addr&0x000000FF,
        (lpwfs->lstnSocketAddress.sin_addr.S_un.S_addr&0x0000FF00)>>8,
        (lpwfs->lstnSocketAddress.sin_addr.S_un.S_addr&0x00FF0000)>>16,
        (lpwfs->lstnSocketAddress.sin_addr.S_un.S_addr&0xFF000000)>>24,
        lpwfs->lstnSocketAddress.sin_port & 0xFF,
        (lpwfs->lstnSocketAddress.sin_port & 0xFF00)>>8);

    if (!FTP_SendCommand(lpwfs->sndSocket, FTP_CMD_PORT, szIPAddress, 0, 0, 0))
        goto lend;

    nResCode = FTP_ReceiveResponse(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
    {
        if (nResCode == 200)
            bSuccess = TRUE;
        else
            FTP_SetResponseError(nResCode);
    }

lend:
    return bSuccess;
}
