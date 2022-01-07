
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int TRUE ;

__attribute__((used)) static BOOL can_open(LPCWSTR filename, DWORD access, DWORD sharing)
{
    HANDLE hfile;

    hfile = CreateFileW(filename, access, sharing, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));

    if (hfile == INVALID_HANDLE_VALUE)
        return FALSE;

    CloseHandle(hfile);
    return TRUE;
}
