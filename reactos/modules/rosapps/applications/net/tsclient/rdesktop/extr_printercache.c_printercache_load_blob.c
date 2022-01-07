
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct stat {int st_size; } ;


 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* getenv (char*) ;
 int open (char*,int ) ;
 int read (int,int *,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

int
printercache_load_blob(char *printer_name, uint8 ** data)
{
 char *home, *path;
 struct stat st;
 int fd, length;

 if (printer_name == ((void*)0))
  return 0;

 *data = ((void*)0);

 home = getenv("HOME");
 if (home == ((void*)0))
  return 0;

 path = (char *) xmalloc(strlen(home) + sizeof("/.rdesktop/rdpdr/") + strlen(printer_name) +
    sizeof("/AutoPrinterCacheData") + 1);
 sprintf(path, "%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData", home, printer_name);

 fd = open(path, O_RDONLY);
 if (fd == -1)
 {
  xfree(path);
  return 0;
 }

 if (fstat(fd, &st))
 {
  xfree(path);
  close(fd);
  return 0;
 }

 *data = (uint8 *) xmalloc(st.st_size);
 length = read(fd, *data, st.st_size);
 close(fd);
 xfree(path);
 return length;
}
