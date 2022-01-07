
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int EXT2_ET_OP_NOT_SUPPORTED ;
 unsigned int EXT4_MMP_SEQ_MAX ;
 int getpid () ;
 int gettimeofday (struct timeval*,int ) ;
 int getuid () ;
 unsigned int rand () ;
 int srand (int) ;

unsigned ext2fs_mmp_new_seq(void)
{
 return EXT2_ET_OP_NOT_SUPPORTED;

}
