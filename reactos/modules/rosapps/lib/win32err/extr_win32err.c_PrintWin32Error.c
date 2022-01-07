
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PWCHAR ;
typedef char* LPWSTR ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageW (int,int *,int ,int ,char*,int ,int *) ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int wprintf (char*,char*,char*) ;

void
PrintWin32Error(
 PWCHAR Message,
 DWORD ErrorCode
 )
{
    LPWSTR lpMsgBuf;

 FormatMessageW(
  (FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM),
  ((void*)0),
  ErrorCode,
  MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
  (LPWSTR)& lpMsgBuf,
  0,
  ((void*)0)
  );
 wprintf(
  L"%s: %s\n",
  Message,
  lpMsgBuf
  );
 LocalFree( lpMsgBuf );
}
