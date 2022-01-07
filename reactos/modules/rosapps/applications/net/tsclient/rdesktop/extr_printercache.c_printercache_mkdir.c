
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ EEXIST ;
 int False ;
 int True ;
 scalar_t__ errno ;
 int mkdir (char*,int) ;
 int perror (char*) ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static BOOL
printercache_mkdir(char *base, char *printer)
{
 char *path;

 path = (char *) xmalloc(strlen(base) + sizeof("/.rdesktop/rdpdr/") + strlen(printer) + 1);

 sprintf(path, "%s/.rdesktop", base);
 if ((mkdir(path, 0700) == -1) && errno != EEXIST)
 {
  perror(path);
  xfree(path);
  return False;
 }

 strcat(path, "/rdpdr");
 if ((mkdir(path, 0700) == -1) && errno != EEXIST)
 {
  perror(path);
  xfree(path);
  return False;
 }

 strcat(path, "/");
 strcat(path, printer);
 if ((mkdir(path, 0700) == -1) && errno != EEXIST)
 {
  perror(path);
  xfree(path);
  return False;
 }

 xfree(path);
 return True;
}
