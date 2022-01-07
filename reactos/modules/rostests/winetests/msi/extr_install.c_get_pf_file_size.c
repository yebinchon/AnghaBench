
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int CHAR ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int *,int ,int ,int *,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int INVALID_FILE_SIZE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int PROG_FILES_DIR ;
 int lstrcatA (int *,char*) ;
 int lstrcpyA (int *,int ) ;

__attribute__((used)) static DWORD get_pf_file_size(LPCSTR file)
{
    CHAR path[MAX_PATH];
    HANDLE hfile;
    DWORD size;

    lstrcpyA(path, PROG_FILES_DIR);
    lstrcatA(path, "\\");
    lstrcatA(path, file);

    hfile = CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (hfile == INVALID_HANDLE_VALUE)
        return INVALID_FILE_SIZE;

    size = GetFileSize(hfile, ((void*)0));
    CloseHandle(hfile);
    return size;
}
