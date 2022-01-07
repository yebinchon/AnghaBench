
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwContext; } ;
struct TYPE_6__ {TYPE_1__ hdr; int sndSocket; } ;
typedef TYPE_2__ ftp_session_t ;
typedef char WCHAR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FTP_CMD_TYPE ;
 int FTP_ReceiveResponse (TYPE_2__*,int ) ;
 int FTP_SendCommand (int ,int ,char*,int ,int ,int ) ;
 int FTP_SetResponseError (int) ;
 int INTERNET_FLAG_TRANSFER_ASCII ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL FTP_SendType(ftp_session_t *lpwfs, DWORD dwType)
{
    INT nResCode;
    WCHAR type[] = { 'I','\0' };
    BOOL bSuccess = FALSE;

    TRACE("\n");
    if (dwType & INTERNET_FLAG_TRANSFER_ASCII)
        type[0] = 'A';

    if (!FTP_SendCommand(lpwfs->sndSocket, FTP_CMD_TYPE, type, 0, 0, 0))
        goto lend;

    nResCode = FTP_ReceiveResponse(lpwfs, lpwfs->hdr.dwContext)/100;
    if (nResCode)
    {
        if (nResCode == 2)
            bSuccess = TRUE;
 else
            FTP_SetResponseError(nResCode);
    }

lend:
    return bSuccess;
}
