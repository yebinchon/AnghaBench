
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fFlags; int * lpszProgressTitle; int * hNameMappings; int * pTo; int * pFrom; int wFunc; int * hwnd; } ;
typedef TYPE_1__ SHFILEOPSTRUCTA ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int DeleteFileA (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FOF_MULTIDESTFILES ;
 int FOF_NOCONFIRMATION ;
 int FOF_NOCONFIRMMKDIR ;
 int FOF_NOERRORUI ;
 int FOF_SILENT ;
 int FO_COPY ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 scalar_t__ SHFileOperationA (TYPE_1__*) ;
 int TRUE ;
 int set_curr_dir_path (int *,char*) ;

__attribute__((used)) static BOOL is_old_shell32(void)
{
    SHFILEOPSTRUCTA shfo;
    CHAR from[5*MAX_PATH];
    CHAR to[5*MAX_PATH];
    DWORD retval;

    shfo.hwnd = ((void*)0);
    shfo.wFunc = FO_COPY;
    shfo.pFrom = from;
    shfo.pTo = to;

    shfo.fFlags = FOF_NOCONFIRMATION | FOF_SILENT | FOF_NOERRORUI | FOF_MULTIDESTFILES | FOF_NOCONFIRMMKDIR;
    shfo.hNameMappings = ((void*)0);
    shfo.lpszProgressTitle = ((void*)0);

    set_curr_dir_path(from, "test1.txt\0test2.txt\0test3.txt\0");
    set_curr_dir_path(to, "test6.txt\0test7.txt\0");
    retval = SHFileOperationA(&shfo);


    DeleteFileA("test6.txt\\test1.txt");

    DeleteFileA("test6.txt\\test2.txt");
    DeleteFileA("test6.txt\\test3.txt");

    RemoveDirectoryA("test6.txt");

    DeleteFileA("test7.txt\\test2.txt");
    RemoveDirectoryA("test7.txt");

    if (retval == ERROR_SUCCESS)
        return TRUE;

    return FALSE;
}
