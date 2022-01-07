
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;


 int BLOCKSZ ;
 int fillbuf (char*) ;
 int lrand48 () ;
 int rwc_pwrite (int,char*,int,int) ;

__attribute__((used)) static void
sequential_writes(int fd, char *buf, uint64_t nblocks, int64_t n)
{
 for (int64_t i = 0; n == -1 || i < n; i++) {
  fillbuf(buf);

  static uint64_t j = 0;
  if (j == 0)
   j = lrand48() % nblocks;
  rwc_pwrite(fd, buf, BLOCKSZ, j * BLOCKSZ);
  j++;
  if (j >= nblocks)
   j = 0;
 }
}
