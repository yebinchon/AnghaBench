
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwFlags; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ ftp_session_t ;
typedef int BOOL ;


 int FALSE ;
 int FTP_DoPassive (TYPE_2__*) ;
 int FTP_SendPort (TYPE_2__*) ;
 int INTERNET_FLAG_PASSIVE ;
 int TRUE ;

__attribute__((used)) static BOOL FTP_SendPortOrPasv(ftp_session_t *lpwfs)
{
    if (lpwfs->hdr.dwFlags & INTERNET_FLAG_PASSIVE)
    {
        if (!FTP_DoPassive(lpwfs))
            return FALSE;
    }
    else
    {
 if (!FTP_SendPort(lpwfs))
            return FALSE;
    }
    return TRUE;
}
