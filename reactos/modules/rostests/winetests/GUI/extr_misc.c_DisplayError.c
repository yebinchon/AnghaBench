
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * LPWSTR ;
typedef int INT ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageW (int,int *,int ,int ,int *,int ,int *) ;
 int LANG_NEUTRAL ;
 int LocalFree (int *) ;
 int MAKELANGID (int ,int ) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBoxW (int *,int *,char*,int) ;
 int SUBLANG_DEFAULT ;

VOID DisplayError(INT err)
{
    LPWSTR lpMsgBuf = ((void*)0);

    FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                   FORMAT_MESSAGE_FROM_SYSTEM |
                   FORMAT_MESSAGE_IGNORE_INSERTS,
                   ((void*)0),
                   err,
                   MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                   (VOID*)&lpMsgBuf,
                   0,
                   ((void*)0) );

    MessageBoxW(((void*)0), lpMsgBuf, L"Error!", MB_OK | MB_ICONERROR);

    LocalFree(lpMsgBuf);
}
