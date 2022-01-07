
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int False ;
 int True ;
 char* getenv (char*) ;
 int printf (char*,char*,char*) ;
 scalar_t__ rename (char*,char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static BOOL
printercache_rename_blob(char *printer, char *new_printer)
{
 char *printer_path;
 char *new_printer_path;
 int printer_maxlen;

 char *home;

 if (printer == ((void*)0))
  return False;

 home = getenv("HOME");
 if (home == ((void*)0))
  return False;

 printer_maxlen =
  (strlen(printer) >
   strlen(new_printer) ? strlen(printer) : strlen(new_printer)) + strlen(home) +
  sizeof("/.rdesktop/rdpdr/") + 1;

 printer_path = (char *) xmalloc(printer_maxlen);
 new_printer_path = (char *) xmalloc(printer_maxlen);

 sprintf(printer_path, "%s/.rdesktop/rdpdr/%s", home, printer);
 sprintf(new_printer_path, "%s/.rdesktop/rdpdr/%s", home, new_printer);

 printf("%s,%s\n", printer_path, new_printer_path);
 if (rename(printer_path, new_printer_path) < 0)
 {
  xfree(printer_path);
  xfree(new_printer_path);
  return False;
 }

 xfree(printer_path);
 xfree(new_printer_path);
 return True;
}
