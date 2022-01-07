
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 scalar_t__ read (int,uintptr_t*,int) ;

__attribute__((used)) static uintptr_t mmap_probe_seed(void)
{
  uintptr_t val;
  int fd = open("/dev/urandom", O_RDONLY);
  if (fd != -1) {
    int ok = ((size_t)read(fd, &val, sizeof(val)) == sizeof(val));
    (void)close(fd);
    if (ok) return val;
  }
  return 1;
}
