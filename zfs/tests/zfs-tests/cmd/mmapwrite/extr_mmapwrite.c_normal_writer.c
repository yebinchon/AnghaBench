
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int O_CREAT ;
 int O_RDWR ;
 int SEEK_CUR ;
 int err (int,char*,...) ;
 int free (char*) ;
 int getpagesize () ;
 int lseek (int,int,int ) ;
 char* malloc (int) ;
 int open (char*,int,int) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void *
normal_writer(void *filename)
{
 char *file_path = filename;
 int fd = -1;
 ssize_t write_num = 0;
 int page_size = getpagesize();

 fd = open(file_path, O_RDWR | O_CREAT, 0777);
 if (fd == -1) {
  err(1, "failed to open %s", file_path);
 }

 char *buf = malloc(1);
 while (1) {
  write_num = write(fd, buf, 1);
  if (write_num == 0) {
   err(1, "write failed!");
   break;
  }
  lseek(fd, page_size, SEEK_CUR);
 }

 if (buf) {
  free(buf);
 }
}
