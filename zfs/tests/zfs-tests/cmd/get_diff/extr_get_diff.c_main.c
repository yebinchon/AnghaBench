
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int DEV_BSIZE ;
 scalar_t__ EIO ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int assert (int) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,long long,long long) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 int open (char*,int) ;
 int perror (char*) ;
 scalar_t__ pread (int,char*,int,scalar_t__) ;
 int stdout ;
 int usage (char*,int) ;

int
main(int argc, char *argv[])
{
 off_t diff_off = 0, diff_len = 0, off = 0;
 int fd1, fd2;
 char *fname1, *fname2;
 char buf1[DEV_BSIZE], buf2[DEV_BSIZE];
 ssize_t bytes;

 if (argc != 3)
  usage("Incorrect number of arguments.", 1);

 if ((fname1 = argv[1]) == ((void*)0))
  usage("Filename missing.", 1);
 if ((fd1 = open(fname1, O_LARGEFILE | O_RDONLY)) < 0) {
  perror("open1 failed");
  exit(1);
 }

 if ((fname2 = argv[2]) == ((void*)0))
  usage("Redacted filename missing.", 1);
 if ((fd2 = open(fname2, O_LARGEFILE | O_RDONLY)) < 0) {
  perror("open2 failed");
  exit(1);
 }

 while ((bytes = pread(fd1, buf1, DEV_BSIZE, off)) > 0) {
  if (pread(fd2, buf2, DEV_BSIZE, off) < 0) {
   if (errno == EIO) {






    buf2[0] = ~buf1[0];
   } else {
    perror("pread failed");
    exit(1);
   }
  }
  if (memcmp(buf1, buf2, bytes) == 0) {
   if (diff_len != 0) {
    (void) fprintf(stdout, "%lld,%lld\n",
        (long long)diff_off, (long long)diff_len);
    assert(off == diff_off + diff_len);
    diff_len = 0;
   }
   diff_off = 0;
  } else {
   if (diff_len == 0)
    diff_off = off;
   assert(off == diff_off + diff_len);
   diff_len += bytes;
  }
  off += bytes;
 }

 if (diff_len != 0 && diff_len != 0) {
  (void) fprintf(stdout, "%lld,%lld\n", (long long)diff_off,
      (long long)diff_len);
 }

 (void) close(fd1);
 (void) close(fd2);

 return (0);
}
