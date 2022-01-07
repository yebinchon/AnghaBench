
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;


 int SEEK_SET ;
 int assert (int) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int readv (int,struct iovec const*,int) ;

__attribute__((used)) static ssize_t
preadv(int fd, const struct iovec *iov, int iovcnt, off_t offset)
{
 off_t res;

 res = lseek(fd, offset, SEEK_SET);
 assert(res == offset);
 return readv(fd, iov, iovcnt);
}
