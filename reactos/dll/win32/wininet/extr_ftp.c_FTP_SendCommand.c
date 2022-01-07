
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_header_t ;
typedef int LPSTR ;
typedef int LPCWSTR ;
typedef int INTERNET_STATUS_CALLBACK ;
typedef int INT ;
typedef int FTP_COMMAND ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int FTP_SendCommandA (int ,int ,int ,int ,int *,int ) ;
 int heap_free (int ) ;
 int heap_strdupWtoA (int ) ;

__attribute__((used)) static BOOL FTP_SendCommand(INT nSocket, FTP_COMMAND ftpCmd, LPCWSTR lpszParam,
 INTERNET_STATUS_CALLBACK lpfnStatusCB, object_header_t *hdr, DWORD_PTR dwContext)
{
    BOOL ret;
    LPSTR lpszParamA = heap_strdupWtoA(lpszParam);
    ret = FTP_SendCommandA(nSocket, ftpCmd, lpszParamA, lpfnStatusCB, hdr, dwContext);
    heap_free(lpszParamA);
    return ret;
}
