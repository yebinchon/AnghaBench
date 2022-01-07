
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int lseek (int,int ,int) ;

__attribute__((used)) static off_t posix_lseek(int fd, off_t offset, int whence){ return lseek(fd, offset, whence); }
