
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int lseek (int,int,int ) ;

int
rd_lseek_file(int fd, int offset)
{
 return lseek(fd, offset, SEEK_SET);
}
