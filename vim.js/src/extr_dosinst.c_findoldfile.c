
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ access (char*,int ) ;
 char* alloc (int) ;
 int free (char*) ;
 char* installdir ;
 int myexit (int) ;
 int printf (char*,char*,char*,char*) ;
 scalar_t__ rename (char*,char*) ;
 char* searchpath_save (char*) ;
 int * strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strnicmp (char*,char*,size_t) ;

__attribute__((used)) static void
findoldfile(char **destination)
{
    char *bp = *destination;
    size_t indir_l = strlen(installdir);
    char *cp = bp + indir_l;
    char *tmpname;
    char *farname;




    if (bp == ((void*)0)
     || strnicmp(bp, installdir, indir_l) != 0
     || strchr("/\\", *cp++) == ((void*)0)
     || strchr(cp, '\\') != ((void*)0)
     || strchr(cp, '/') != ((void*)0))
 return;

    tmpname = alloc((int)strlen(cp) + 1);
    strcpy(tmpname, cp);
    tmpname[strlen(tmpname) - 1] = 'x';

    if (access(tmpname, 0) == 0)
    {
 printf("\nERROR: %s and %s clash.  Remove or rename %s.\n",
     tmpname, cp, tmpname);
 myexit(1);
    }

    if (rename(cp, tmpname) != 0)
    {
 printf("\nERROR: failed to rename %s to %s: %s\n",
     cp, tmpname, strerror(0));
 myexit(1);
    }

    farname = searchpath_save(cp);

    if (rename(tmpname, cp) != 0)
    {
 printf("\nERROR: failed to rename %s back to %s: %s\n",
     tmpname, cp, strerror(0));
 myexit(1);
    }

    free(*destination);
    free(tmpname);
    *destination = farname;
}
