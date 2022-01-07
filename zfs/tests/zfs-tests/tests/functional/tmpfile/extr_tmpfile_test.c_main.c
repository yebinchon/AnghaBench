
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EISDIR ;
 scalar_t__ EOPNOTSUPP ;
 int O_TMPFILE ;
 int O_WRONLY ;
 int S_ISDIR (int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 int fd;
 struct stat buf;

 if (argc < 2) {
  fprintf(stderr, "Usage: %s dir\n", argv[0]);
  return (2);
 }
 if (stat(argv[1], &buf) < 0) {
  perror("stat");
  return (2);
 }
 if (!S_ISDIR(buf.st_mode)) {
  fprintf(stderr, "\"%s\" is not a directory\n", argv[1]);
  return (2);
 }

 fd = open(argv[1], O_TMPFILE | O_WRONLY, 0666);
 if (fd < 0) {
  if (errno == EISDIR) {
   fprintf(stderr,
       "The kernel doesn't support O_TMPFILE\n");
   return (1);
  } else if (errno == EOPNOTSUPP) {
   fprintf(stderr,
       "The filesystem doesn't support O_TMPFILE\n");
   return (2);
  }
  perror("open");
 } else {
  close(fd);
 }
 return (0);
}
