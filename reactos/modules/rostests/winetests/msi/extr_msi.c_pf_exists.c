
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int MAX_PATH ;
 int PROG_FILES_DIR ;
 int file_exists (char*) ;
 int lstrcatA (char*,char const*) ;
 int lstrcpyA (char*,int ) ;

__attribute__((used)) static BOOL pf_exists(const char *file)
{
    char path[MAX_PATH];

    lstrcpyA(path, PROG_FILES_DIR);
    lstrcatA(path, "\\");
    lstrcatA(path, file);
    return file_exists(path);
}
