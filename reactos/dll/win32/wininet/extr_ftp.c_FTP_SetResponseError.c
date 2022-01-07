
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERROR_INTERNET_CANNOT_CONNECT ;
 int ERROR_INTERNET_CONNECTION_ABORTED ;
 int ERROR_INTERNET_EXTENDED_ERROR ;
 int ERROR_INTERNET_LOGIN_FAILURE ;
 int INTERNET_SetLastError (int) ;

__attribute__((used)) static DWORD FTP_SetResponseError(DWORD dwResponse)
{
    DWORD dwCode = 0;

    switch(dwResponse)
    {
    case 425:
        dwCode = ERROR_INTERNET_CANNOT_CONNECT;
        break;

    case 426:
        dwCode = ERROR_INTERNET_CONNECTION_ABORTED;
        break;

    case 530:
        dwCode = ERROR_INTERNET_LOGIN_FAILURE;
        break;

    case 421:
    case 450:
    case 451:
    case 452:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 532:
    case 550:
    case 551:
    case 552:
    case 553:

    default:
        dwCode = ERROR_INTERNET_EXTENDED_ERROR;
        break;
    }

    INTERNET_SetLastError(dwCode);
    return dwCode;
}
