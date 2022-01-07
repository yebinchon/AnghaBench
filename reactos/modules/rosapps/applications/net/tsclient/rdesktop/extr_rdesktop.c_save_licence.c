
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* hostname; } ;
typedef TYPE_1__ RDPCLIENT ;


 scalar_t__ EEXIST ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int mkdir (char*,int) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int rename (char*,char*) ;
 int sprintf (char*,char*,char*,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int unlink (char*) ;
 int write (int,unsigned char*,int) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

void
save_licence(RDPCLIENT * This, unsigned char *data, int length)
{
 char *home, *path, *tmppath;
 int fd;

 home = getenv("HOME");
 if (home == ((void*)0))
  return;

 path = (char *) xmalloc(strlen(home) + strlen(This->hostname) + sizeof("/.rdesktop/licence."));

 sprintf(path, "%s/.rdesktop", home);
 if ((mkdir(path, 0700) == -1) && errno != EEXIST)
 {
  perror(path);
  return;
 }



 sprintf(path, "%s/.rdesktop/licence.%s", home, This->hostname);
 tmppath = (char *) xmalloc(strlen(path) + sizeof(".new"));
 strcpy(tmppath, path);
 strcat(tmppath, ".new");

 fd = open(tmppath, O_WRONLY | O_CREAT | O_TRUNC, 0600);
 if (fd == -1)
 {
  perror(tmppath);
  return;
 }

 if (write(fd, data, length) != length)
 {
  perror(tmppath);
  unlink(tmppath);
 }
 else if (rename(tmppath, path) == -1)
 {
  perror(path);
  unlink(tmppath);
 }

 close(fd);
 xfree(tmppath);
 xfree(path);
}
