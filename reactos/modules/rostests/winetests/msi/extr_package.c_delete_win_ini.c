
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef int CHAR ;


 int DeleteFileA (int *) ;
 int GetWindowsDirectoryA (int *,int) ;
 int MAX_PATH ;
 int lstrcatA (int *,char*) ;

__attribute__((used)) static void delete_win_ini(LPCSTR file)
{
    CHAR path[MAX_PATH];

    GetWindowsDirectoryA(path, MAX_PATH);
    lstrcatA(path, "\\");
    lstrcatA(path, file);

    DeleteFileA(path);
}
