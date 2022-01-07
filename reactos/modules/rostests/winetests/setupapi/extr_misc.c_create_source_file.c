
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int WriteFile (int ,int const*,int ,int *,int *) ;

__attribute__((used)) static void create_source_file(LPSTR filename, const BYTE *data, DWORD size)
{
    HANDLE handle;
    DWORD written;

    handle = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    WriteFile(handle, data, size, &written, ((void*)0));
    CloseHandle(handle);
}
