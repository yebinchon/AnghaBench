
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,int const*,int ,int *,int *) ;

__attribute__((used)) static BOOL initFileFromData(LPCWSTR filename, const BYTE *pb, DWORD cb)
{
    HANDLE file = CreateFileW(filename, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0),
     CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    BOOL ret;

    if (file != INVALID_HANDLE_VALUE)
    {
        DWORD written;

        ret = WriteFile(file, pb, cb, &written, ((void*)0));
        CloseHandle(file);
    }
    else
        ret = FALSE;
    return ret;
}
