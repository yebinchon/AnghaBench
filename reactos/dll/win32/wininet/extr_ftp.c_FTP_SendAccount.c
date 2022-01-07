
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwContext; } ;
struct TYPE_6__ {TYPE_1__ hdr; int sndSocket; } ;
typedef TYPE_2__ ftp_session_t ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 int FTP_CMD_ACCT ;
 scalar_t__ FTP_ReceiveResponse (TYPE_2__*,int ) ;
 int FTP_SendCommand (int ,int ,int ,int ,int ,int ) ;
 int FTP_SetResponseError (scalar_t__) ;
 int TRACE (char*) ;
 int TRUE ;
 int szNoAccount ;

__attribute__((used)) static BOOL FTP_SendAccount(ftp_session_t *lpwfs)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    TRACE("\n");
    if (!FTP_SendCommand(lpwfs->sndSocket, FTP_CMD_ACCT, szNoAccount, 0, 0, 0))
        goto lend;

    nResCode = FTP_ReceiveResponse(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
        bSuccess = TRUE;
    else
        FTP_SetResponseError(nResCode);

lend:
    return bSuccess;
}
