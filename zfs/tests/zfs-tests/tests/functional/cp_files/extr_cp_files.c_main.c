
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 int O_CREAT ;
 int O_DIRECTORY ;
 int O_WRONLY ;
 int close (int) ;
 int closedir (int *) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int open (char*,int ) ;
 int openat (int,char*,int,int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int stderr ;
 char* strerror (int ) ;

int
main(int argc, char *argv[])
{
 int tfd;
 DIR *sdir;
 struct dirent *dirent;

 if (argc != 3) {
  fprintf(stderr, "Usage: %s SRC DST\n", argv[0]);
  exit(1);
 }

 sdir = opendir(argv[1]);
 if (sdir == ((void*)0)) {
  fprintf(stderr, "Failed to open %s: %s\n",
      argv[1], strerror(errno));
  exit(2);
 }

 tfd = open(argv[2], O_DIRECTORY);
 if (tfd < 0) {
  fprintf(stderr, "Failed to open %s: %s\n",
      argv[2], strerror(errno));
  closedir(sdir);
  exit(3);
 }

 while ((dirent = readdir(sdir)) != ((void*)0)) {
  if (dirent->d_name[0] == '.' &&
      (dirent->d_name[1] == '.' || dirent->d_name[1] == '\0'))
   continue;

  int fd = openat(tfd, dirent->d_name, O_CREAT|O_WRONLY, 0666);
  if (fd < 0) {
   fprintf(stderr, "Failed to create %s/%s: %s\n",
       argv[2], dirent->d_name, strerror(errno));
   closedir(sdir);
   close(tfd);
   exit(4);
  }
  close(fd);
 }

 closedir(sdir);
 close(tfd);

 return (0);
}
