
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;


 int F_OK ;
 int MIN (int,scalar_t__) ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int SEEK_SET ;
 int _O_BINARY ;
 scalar_t__ access (char const*,int ) ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int ftruncate (int,scalar_t__) ;
 int lseek (int,int,int ) ;
 int memset (int *,int ,int) ;
 int open (char const*,int,int) ;
 int read (int,int *,int) ;
 int testFree (int *) ;
 int * testMalloc (int) ;
 int unlink (char const*) ;
 int write (int,int *,int) ;

__attribute__((used)) static void copy_file(const char *zFrom, const char *zTo, int isDatabase){

  if( access(zFrom, F_OK) ){
    unlink(zTo);
  }else{
    int fd1;
    int fd2;
    off_t sz;
    off_t i;
    struct stat buf;
    u8 *aBuf;

    fd1 = open(zFrom, O_RDONLY | _O_BINARY, 0644);
    fd2 = open(zTo, O_RDWR | O_CREAT | _O_BINARY, 0644);

    fstat(fd1, &buf);
    sz = buf.st_size;
    ftruncate(fd2, sz);

    aBuf = testMalloc(4096);
    for(i=0; i<sz; i+=4096){
      int bLockPage = isDatabase && i == 0;
      int nByte = MIN((bLockPage ? 4066 : 4096), sz - i);
      memset(aBuf, 0, 4096);
      read(fd1, aBuf, nByte);
      write(fd2, aBuf, nByte);
      if( bLockPage ){
        lseek(fd1, 4096, SEEK_SET);
        lseek(fd2, 4096, SEEK_SET);
      }
    }
    testFree(aBuf);

    close(fd1);
    close(fd2);
  }
}
