
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int ftruncate (int,int) ;
 int lseek (int,int,int ) ;
 int perror (char*) ;
 int write (int,char const*,int) ;

__attribute__((used)) static int
ftruncate_growable(int fd, off_t length)
{
 int ret;
 off_t pos;
 static const char zero = 0;


 if ((ret = ftruncate(fd, length)) != -1)
 {
  return ret;
 }







 if ((pos = lseek(fd, 0, SEEK_CUR)) == -1)
 {
  perror("lseek");
  return -1;
 }


 if (lseek(fd, length, SEEK_SET) == -1)
 {
  perror("lseek");
  return -1;
 }


 if (write(fd, &zero, 1) == -1)
 {
  perror("write");
  return -1;
 }


 if (ftruncate(fd, length) == -1)
 {
  perror("ftruncate");
  return -1;
 }


 if (lseek(fd, pos, SEEK_SET) == -1)
 {
  perror("lseek");
  return -1;
 }

 return 0;
}
