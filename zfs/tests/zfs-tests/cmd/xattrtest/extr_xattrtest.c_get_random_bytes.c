
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 size_t read (int,char*,size_t) ;

__attribute__((used)) static int
get_random_bytes(char *buf, size_t bytes)
{
 int rand;
 ssize_t bytes_read = 0;

 rand = open("/dev/urandom", O_RDONLY);

 if (rand < 0)
  return (rand);

 while (bytes_read < bytes) {
  ssize_t rc = read(rand, buf + bytes_read, bytes - bytes_read);
  if (rc < 0)
   break;
  bytes_read += rc;
 }

 (void) close(rand);

 return (bytes_read);
}
