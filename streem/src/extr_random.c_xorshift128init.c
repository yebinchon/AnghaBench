
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct timeval {scalar_t__ tv_usec; } ;
struct stat {int st_mode; } ;
typedef scalar_t__ ssize_t ;


 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 scalar_t__ S_ISCHR (int ) ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int gettimeofday (struct timeval*,int *) ;
 int open (char*,int,int ) ;
 scalar_t__ read (int,int*,size_t const) ;

__attribute__((used)) static void
xorshift128init(uint32_t seed[4])
{
  struct timeval tv;
  uint32_t y;
  int i;


  int fd = open("/dev/urandom",






                           O_RDONLY, 0);
  if (fd > 0) {
    struct stat statbuf;
    ssize_t ret = 0;
    const size_t size = sizeof(uint64_t)*2;

    if (fstat(fd, &statbuf) == 0 && S_ISCHR(statbuf.st_mode)) {
      ret = read(fd, seed, size);
    }
    close(fd);
    if ((size_t)ret == size) return;
  }


  y = 2463534242;
  gettimeofday(&tv, ((void*)0));
  y ^= (uint32_t)tv.tv_usec;
  for (i=0; i<4; i++) {
    y = y ^ (y << 13); y = y ^ (y >> 17);
    y = y ^ (y << 5);
    seed[i] = y;
  }
  return;
}
