
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LINESIZE ;
 int PATH_MAX ;
 char* UNZIP_FMT ;
 char* UNZIP_FMT_CAB ;
 scalar_t__ copy_file (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int l2l_dbg (int,char*,char*) ;
 int opt_7z ;
 int remove (char*) ;
 int sprintf (char*,char*,int ,char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ system (char*) ;

__attribute__((used)) static int
unpack_iso(char *dir, char *iso)
{
    char Line[LINESIZE];
    int res = 0;
    char iso_tmp[PATH_MAX];
    int iso_copied = 0;
    FILE *fiso;

    strcpy(iso_tmp, iso);
    if ((fiso = fopen(iso, "a")) == ((void*)0))
    {
        l2l_dbg(1, "Open of %s failed (locked for writing?), trying to copy first\n", iso);

        strcat(iso_tmp, "~");
        if (copy_file(iso, iso_tmp))
            return 3;
        iso_copied = 1;
    }
    else
        fclose(fiso);

    sprintf(Line, UNZIP_FMT, opt_7z, iso_tmp, dir);
    if (system(Line) < 0)
    {
        l2l_dbg(0, "\nCannot unpack %s (check 7z path!)\n", iso_tmp);
        l2l_dbg(1, "Failed to execute: '%s'\n", Line);
        res = 1;
    }
    else
    {
        l2l_dbg(2, "\nUnpacking reactos.cab in %s\n", dir);
        sprintf(Line, UNZIP_FMT_CAB, opt_7z, dir, dir);
        if (system(Line) < 0)
        {
            l2l_dbg(0, "\nCannot unpack reactos.cab in %s\n", dir);
            l2l_dbg(1, "Failed to execute: '%s'\n", Line);
            res = 2;
        }
    }
    if (iso_copied)
        remove(iso_tmp);
    return res;
}
