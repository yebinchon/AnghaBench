
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int CreateDirectoryA (int *,int *) ;
 int MAX_PATH ;
 int PROG_FILES_DIR ;
 int create_file_data (int *,char*,int) ;
 int lstrcatA (int *,char*) ;
 int lstrcpyA (int *,int ) ;

__attribute__((used)) static void create_pf_data(LPCSTR file, LPCSTR data, BOOL is_file)
{
    CHAR path[MAX_PATH];

    lstrcpyA(path, PROG_FILES_DIR);
    lstrcatA(path, "\\");
    lstrcatA(path, file);

    if (is_file)
        create_file_data(path, data, 500);
    else
        CreateDirectoryA(path, ((void*)0));
}
