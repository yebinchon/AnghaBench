
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_t ;
typedef scalar_t__ diskaddr_t ;


 int BLKGETSIZE64 ;
 int BLKSSZGET ;
 scalar_t__ ioctl (int,int ,...) ;

__attribute__((used)) static int
read_disk_info(int fd, diskaddr_t *capacity, uint_t *lbsize)
{
 int sector_size;
 unsigned long long capacity_size;

 if (ioctl(fd, BLKSSZGET, &sector_size) < 0)
  return (-1);

 if (ioctl(fd, BLKGETSIZE64, &capacity_size) < 0)
  return (-1);

 *lbsize = (uint_t)sector_size;
 *capacity = (diskaddr_t)(capacity_size / sector_size);

 return (0);
}
