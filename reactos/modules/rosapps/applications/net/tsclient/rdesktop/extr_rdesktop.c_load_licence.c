
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char uint8 ;
struct stat {int st_size; } ;
struct TYPE_3__ {char* hostname; } ;
typedef TYPE_1__ RDPCLIENT ;


 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* getenv (char*) ;
 int open (char*,int ) ;
 int read (int,unsigned char*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

int
load_licence(RDPCLIENT * This, unsigned char **data)
{
 char *home, *path;
 struct stat st;
 int fd, length;

 home = getenv("HOME");
 if (home == ((void*)0))
  return -1;

 path = (char *) xmalloc(strlen(home) + strlen(This->hostname) + sizeof("/.rdesktop/licence."));
 sprintf(path, "%s/.rdesktop/licence.%s", home, This->hostname);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return -1;

 if (fstat(fd, &st))
 {
  close(fd);
  return -1;
 }

 *data = (uint8 *) xmalloc(st.st_size);
 length = read(fd, *data, st.st_size);
 close(fd);
 xfree(path);
 return length;
}
