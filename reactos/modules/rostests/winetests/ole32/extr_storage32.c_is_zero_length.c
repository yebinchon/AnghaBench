
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int GENERIC_READ ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;

__attribute__((used)) static BOOL is_zero_length(LPCSTR filename)
{
    HANDLE file;
    DWORD len;

    file = CreateFileA(filename, GENERIC_READ, 0, ((void*)0),
                OPEN_EXISTING, 0, ((void*)0));
    if (file==INVALID_HANDLE_VALUE)
        return FALSE;
    len = GetFileSize(file, ((void*)0));
    CloseHandle(file);
    return len == 0;
}
