
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int False ;
 int True ;
 char* getenv (char*) ;
 scalar_t__ rmdir (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 scalar_t__ unlink (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static BOOL
printercache_unlink_blob(char *printer)
{
 char *path;
 char *home;

 if (printer == ((void*)0))
  return False;

 home = getenv("HOME");
 if (home == ((void*)0))
  return False;

 path = (char *) xmalloc(strlen(home) + sizeof("/.rdesktop/rdpdr/") + strlen(printer) +
    sizeof("/AutoPrinterCacheData") + 1);

 sprintf(path, "%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData", home, printer);

 if (unlink(path) < 0)
 {
  xfree(path);
  return False;
 }

 sprintf(path, "%s/.rdesktop/rdpdr/%s", home, printer);

 if (rmdir(path) < 0)
 {
  xfree(path);
  return False;
 }

 xfree(path);
 return True;
}
