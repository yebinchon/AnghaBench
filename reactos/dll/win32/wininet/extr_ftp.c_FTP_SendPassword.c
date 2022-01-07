
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwContext; } ;
struct TYPE_7__ {TYPE_1__ hdr; int lpszPassword; int sndSocket; } ;
typedef TYPE_2__ ftp_session_t ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int FTP_CMD_PASS ;
 int FTP_ReceiveResponse (TYPE_2__*,int ) ;
 int FTP_SendAccount (TYPE_2__*) ;
 int FTP_SendCommand (int ,int ,int ,int ,int ,int ) ;
 int FTP_SetResponseError (int) ;
 int TRACE (char*,...) ;
 int TRUE ;

__attribute__((used)) static BOOL FTP_SendPassword(ftp_session_t *lpwfs)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    TRACE("\n");
    if (!FTP_SendCommand(lpwfs->sndSocket, FTP_CMD_PASS, lpwfs->lpszPassword, 0, 0, 0))
        goto lend;

    nResCode = FTP_ReceiveResponse(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
    {
        TRACE("Received reply code %d\n", nResCode);

        if (nResCode == 230)
            bSuccess = TRUE;


        else if (nResCode == 332)
            bSuccess = FTP_SendAccount(lpwfs);
        else
            FTP_SetResponseError(nResCode);
    }

lend:
    TRACE("Returning %d\n", bSuccess);
    return bSuccess;
}
