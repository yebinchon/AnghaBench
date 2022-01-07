
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* off_t ;
typedef int mode_t ;


 int EOF ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 void* atoll (int ) ;
 scalar_t__ calloc (int,size_t) ;
 int close (int) ;
 scalar_t__ fallocate (int,int,void*,void*) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int memset (char*,char,size_t) ;
 int open (char*,int,int) ;
 int optarg ;
 int optind ;
 int perror (char*) ;
 int usage (char*) ;
 size_t write (int,char*,size_t) ;

int
main(int argc, char *argv[])
{
 char *filename = ((void*)0);
 char *buf = ((void*)0);
 size_t filesize = 0;
 off_t start_off = 0;
 off_t off_len = 0;
 int fd, ch;
 mode_t mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;

 while ((ch = getopt(argc, argv, "l:s:n:")) != EOF) {
  switch (ch) {
  case 'l':
   filesize = atoll(optarg);
   break;
  case 's':
   start_off = atoll(optarg);
   break;
  case 'n':
   off_len = atoll(optarg);
   break;
  default:
   usage(argv[0]);
   break;
  }
 }

 if (optind == argc - 1)
  filename = argv[optind];
 else
  usage(argv[0]);

 if ((fd = open(filename, O_RDWR | O_CREAT | O_TRUNC, mode)) < 0) {
  perror("open");
  return (1);
 }

 buf = (char *)calloc(1, filesize);
 if (buf == ((void*)0)) {
  perror("write");
  close(fd);
  return (1);
 }
 memset(buf, 'c', filesize);

 if (write(fd, buf, filesize) < filesize) {
  free(buf);
  perror("write");
  close(fd);
  return (1);
 }

 free(buf);
 {
  perror("FALLOC_FL_PUNCH_HOLE unsupported");
  close(fd);
  return (1);
 }

 close(fd);
 return (0);
}
