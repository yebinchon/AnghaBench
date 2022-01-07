
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_type; unsigned int l_start; unsigned int l_len; scalar_t__ l_pid; int l_whence; } ;
typedef int lk ;


 int F_GETLK ;
 int F_UNLCK ;
 int SEEK_SET ;
 int errno ;
 int exit (int) ;
 int fcntl (int,int ,struct flock*) ;
 int fprintf (int ,char*,int,int) ;
 int memset (struct flock*,int ,int) ;
 int printf (char*,char const*,int) ;
 int stderr ;

__attribute__((used)) static int isLocked(
  int h,
  int type,
  unsigned int iOfst,
  unsigned int iCnt,
  const char *zType
){
  struct flock lk;

  memset(&lk, 0, sizeof(lk));
  lk.l_type = type;
  lk.l_whence = SEEK_SET;
  lk.l_start = iOfst;
  lk.l_len = iCnt;
  if( fcntl(h, F_GETLK, &lk)==(-1) ){
    fprintf(stderr, "fcntl(%d) failed: errno=%d\n", h, errno);
    exit(1);
  }
  if( lk.l_type==F_UNLCK ) return 0;
  printf("%s lock held by %d\n", zType, (int)lk.l_pid);
  return 1;
}
