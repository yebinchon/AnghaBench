
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int SEEK_CUR ;
 int bb_copyfd_exact_size (int,int,scalar_t__) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;

__attribute__((used)) static void unzip_skip(int zip_fd, off_t skip)
{
 if (skip != 0)
  if (lseek(zip_fd, skip, SEEK_CUR) == (off_t)-1)
   bb_copyfd_exact_size(zip_fd, -1, skip);
}
