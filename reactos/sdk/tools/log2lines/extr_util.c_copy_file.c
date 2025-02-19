
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CP_FMT ;
 int LINESIZE ;
 scalar_t__ file_exists (char*) ;
 int l2l_dbg (int,char*,char*,...) ;
 int remove (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ system (char*) ;

int
copy_file(char *src, char *dst)
{
    char Line[LINESIZE];

    sprintf(Line, CP_FMT, src, dst);
    l2l_dbg(2, "Executing: %s\n", Line);
    remove(dst);
    if (file_exists(dst))
    {
        l2l_dbg(0, "Cannot remove dst %s before copy\n", dst);
        return 1;
    }
    if (system(Line) < 0)
    {
        l2l_dbg(0, "Cannot copy %s to %s\n", src, dst);
        l2l_dbg(1, "Failed to execute: '%s'\n", Line);
        return 2;
    }

    if (!file_exists(dst))
    {
        l2l_dbg(0, "Dst %s does not exist after copy\n", dst);
        return 2;
    }
    return 0;
}
