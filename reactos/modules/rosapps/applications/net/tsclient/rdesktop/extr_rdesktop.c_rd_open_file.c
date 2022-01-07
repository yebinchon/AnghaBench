
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 char* getenv (char*) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int sprintf (char*,char*,char*,char*) ;

int
rd_open_file(char *filename)
{
 char *home;
 char fn[256];
 int fd;

 home = getenv("HOME");
 if (home == ((void*)0))
  return -1;
 sprintf(fn, "%s/.rdesktop/%s", home, filename);
 fd = open(fn, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
 if (fd == -1)
  perror(fn);
 return fd;
}
