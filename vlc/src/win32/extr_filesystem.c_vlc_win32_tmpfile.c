
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int *,int,int ,int *,int ,int,int *) ;
 int DELETE ;
 int FILE_ATTRIBUTE_TEMPORARY ;
 int FILE_FLAG_DELETE_ON_CLOSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetTempFileName (int *,int ,int ,int *) ;
 int GetTempPath (int,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int TEXT (char*) ;
 int _close (int) ;
 int * _fdopen (int,char*) ;
 int _open_osfhandle (intptr_t,int ) ;

FILE *vlc_win32_tmpfile(void)
{
    WCHAR tmp_path[MAX_PATH-14];
    int i_ret = GetTempPath (MAX_PATH-14, tmp_path);
    if (i_ret == 0)
        return ((void*)0);

    WCHAR tmp_name[MAX_PATH];
    i_ret = GetTempFileName(tmp_path, TEXT("VLC"), 0, tmp_name);
    if (i_ret == 0)
        return ((void*)0);

    HANDLE hFile = CreateFile(tmp_name,
            GENERIC_READ | GENERIC_WRITE | DELETE, 0, ((void*)0), CREATE_ALWAYS,
            FILE_ATTRIBUTE_TEMPORARY | FILE_FLAG_DELETE_ON_CLOSE, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
        return ((void*)0);

    int fd = _open_osfhandle((intptr_t)hFile, 0);
    if (fd == -1) {
        CloseHandle(hFile);
        return ((void*)0);
    }

    FILE *stream = _fdopen(fd, "w+b");
    if (stream == ((void*)0)) {
        _close(fd);
        return ((void*)0);
    }
    return stream;
}
