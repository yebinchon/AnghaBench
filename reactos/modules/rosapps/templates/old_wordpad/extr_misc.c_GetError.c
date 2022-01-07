
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ LPVOID ;
typedef int LPTSTR ;
typedef int LPCTSTR ;
typedef scalar_t__ DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessage (int,int *,scalar_t__,int ,int ,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (scalar_t__) ;
 int MAKELANGID (int ,int ) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBox (int *,int ,int ,int) ;
 int SUBLANG_DEFAULT ;
 int _T (char*) ;

VOID GetError(DWORD err)
{
    LPVOID lpMsgBuf;

    if (err == 0)
        err = GetLastError();

    FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                  FORMAT_MESSAGE_FROM_SYSTEM |
                  FORMAT_MESSAGE_IGNORE_INSERTS,
                  ((void*)0),
                  err,
                  MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                  (LPTSTR) &lpMsgBuf,
                  0,
                  ((void*)0) );

    MessageBox(((void*)0), (LPCTSTR) lpMsgBuf, _T("Error!"), MB_OK | MB_ICONERROR);

    LocalFree(lpMsgBuf);
}
