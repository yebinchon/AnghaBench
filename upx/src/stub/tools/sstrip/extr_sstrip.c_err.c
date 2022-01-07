
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 char* filename ;
 int fprintf (int ,char*,char*,char*,char const*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static int err(char const *errmsg)
{
    fprintf(stderr, "%s: %s: %s\n", progname, filename, errmsg);
    return FALSE;
}
