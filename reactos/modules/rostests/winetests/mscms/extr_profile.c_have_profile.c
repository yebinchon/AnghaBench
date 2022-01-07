
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FIND_DATAA ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (char*,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int TRUE ;
 int lstrcatA (char*,char*) ;
 int pGetColorDirectoryA (int *,char*,int *) ;

__attribute__((used)) static BOOL have_profile(void)
{
    char glob[MAX_PATH + sizeof("\\*.icm")];
    DWORD size = MAX_PATH;
    HANDLE handle;
    WIN32_FIND_DATAA data;

    if (!pGetColorDirectoryA( ((void*)0), glob, &size )) return FALSE;
    lstrcatA( glob, "\\*.icm" );
    handle = FindFirstFileA( glob, &data );
    if (handle == INVALID_HANDLE_VALUE) return FALSE;
    FindClose( handle );
    return TRUE;
}
