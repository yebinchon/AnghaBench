
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cbuf ;


 int BUFSIZ ;
 int False ;
 char NUL ;
 int coloncmd (char*,int ) ;
 int sprintf (char*,char*,int) ;
 int vim_snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void
load_buffer_by_name(
 char *filename,
 int lnum)
{
    char lnumbuf[16];
    char cbuf[BUFSIZ];

    if (lnum > 0)
 sprintf(lnumbuf, "+%d", lnum);
    else
 lnumbuf[0] = NUL;

    vim_snprintf(cbuf, sizeof(cbuf), "e %s %s", lnumbuf, filename);
    coloncmd(cbuf, False);
}
