
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int showform () ;
 int showgrep () ;
 int showjs () ;
 int showoutline () ;
 int showpages () ;
 int showpathroot (char*) ;
 int showtrailer () ;
 int showxref () ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void show(char *sel)
{
 if (!strcmp(sel, "trailer"))
  showtrailer();
 else if (!strcmp(sel, "xref"))
  showxref();
 else if (!strcmp(sel, "pages"))
  showpages();
 else if (!strcmp(sel, "grep"))
  showgrep();
 else if (!strcmp(sel, "outline"))
  showoutline();
 else if (!strcmp(sel, "js"))
  showjs();
 else if (!strcmp(sel, "form"))
  showform();
 else
  showpathroot(sel);
}
