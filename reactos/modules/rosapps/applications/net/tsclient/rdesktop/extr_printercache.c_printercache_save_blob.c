
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 char* getenv (char*) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int printercache_mkdir (char*,char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int unlink (char*) ;
 int write (int,int *,int ) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
printercache_save_blob(char *printer_name, uint8 * data, uint32 length)
{
 char *home, *path;
 int fd;

 if (printer_name == ((void*)0))
  return;

 home = getenv("HOME");
 if (home == ((void*)0))
  return;

 if (!printercache_mkdir(home, printer_name))
  return;

 path = (char *) xmalloc(strlen(home) + sizeof("/.rdesktop/rdpdr/") + strlen(printer_name) +
    sizeof("/AutoPrinterCacheData") + 1);
 sprintf(path, "%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData", home, printer_name);

 fd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0600);
 if (fd == -1)
 {
  perror(path);
  xfree(path);
  return;
 }

 if (write(fd, data, length) != length)
 {
  perror(path);
  unlink(path);
 }

 close(fd);
 xfree(path);
}
