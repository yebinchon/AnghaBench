
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
struct tms {int dummy; } ;
struct timeval {int dummy; } ;
struct stat {int st_atime; int st_mtime; int st_ctime; } ;
typedef int MD5_CTX ;


 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,int *,int) ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ generate_random_egd (int *) ;
 int getgid () ;
 int getpid () ;
 int getppid () ;
 int gettimeofday (struct timeval*,int *) ;
 int getuid () ;
 int open (char*,int ) ;
 int read (int,int *,int) ;
 int stat (char*,struct stat*) ;
 int times (struct tms*) ;

void
generate_random(uint8 * random)
{
 struct stat st;
 struct tms tmsbuf;
 MD5_CTX md5;
 uint32 *r;
 int fd, n;


 if (((fd = open("/dev/urandom", O_RDONLY)) != -1)
     || ((fd = open("/dev/random", O_RDONLY)) != -1))
 {
  n = read(fd, random, 32);
  close(fd);
  if (n == 32)
   return;
 }
 r = (uint32 *) random;
 r[0] = (getpid()) | (getppid() << 16);
 r[1] = (getuid()) | (getgid() << 16);
 r[2] = times(&tmsbuf);
 gettimeofday((struct timeval *) &r[3], ((void*)0));
 stat("/tmp", &st);
 r[5] = st.st_atime;
 r[6] = st.st_mtime;
 r[7] = st.st_ctime;


 MD5_Init(&md5);
 MD5_Update(&md5, random, 16);
 MD5_Final(random, &md5);
 MD5_Update(&md5, random + 16, 16);
 MD5_Final(random + 16, &md5);
}
