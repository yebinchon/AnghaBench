
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeleteFileA (char*) ;
 int MAX_PATH ;
 int PROG_FILES_DIR ;
 scalar_t__ RemoveDirectoryA (char*) ;
 int lstrcatA (char*,char const*) ;
 int lstrcpyA (char*,int ) ;

__attribute__((used)) static BOOL delete_pf(const CHAR *rel_path, BOOL is_file)
{
    CHAR path[MAX_PATH];

    lstrcpyA(path, PROG_FILES_DIR);
    lstrcatA(path, "\\");
    lstrcatA(path, rel_path);

    if (is_file)
        return DeleteFileA(path);
    else
        return RemoveDirectoryA(path);
}
