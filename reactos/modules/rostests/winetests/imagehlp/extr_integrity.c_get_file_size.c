
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int test_dll_path ;

__attribute__((used)) static DWORD get_file_size(void)
{
    HANDLE file;
    DWORD filesize = 0;

    file = CreateFileA(test_dll_path, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                       OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (file == INVALID_HANDLE_VALUE)
        return 0;

    filesize = GetFileSize(file, ((void*)0));
    CloseHandle(file);

    return filesize;
}
