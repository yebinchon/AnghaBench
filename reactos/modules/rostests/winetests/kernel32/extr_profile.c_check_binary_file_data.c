
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int ) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,int *,scalar_t__,scalar_t__*,int *) ;
 int memcmp (int *,int const*,scalar_t__) ;

__attribute__((used)) static BOOL check_binary_file_data(LPCSTR path, const VOID *data, DWORD size)
{
    HANDLE file;
    CHAR buf[MAX_PATH];
    BOOL ret;

    file = CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, 0);
    if (file == INVALID_HANDLE_VALUE)
      return FALSE;

    if(size != GetFileSize(file, ((void*)0)) )
    {
        CloseHandle(file);
        return FALSE;
    }

    ret = ReadFile(file, buf, size, &size, ((void*)0));
    CloseHandle(file);
    if (!ret)
      return FALSE;

    return !memcmp(buf, data, size);
}
