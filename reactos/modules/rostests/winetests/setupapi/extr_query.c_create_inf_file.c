
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;

__attribute__((used)) static BOOL create_inf_file(LPSTR filename, const char *data, DWORD size)
{
    BOOL ret;
    DWORD dwNumberOfBytesWritten;
    HANDLE hf = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0),
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hf == INVALID_HANDLE_VALUE) return FALSE;
    ret = WriteFile(hf, data, size, &dwNumberOfBytesWritten, ((void*)0));
    CloseHandle(hf);
    return ret;
}
