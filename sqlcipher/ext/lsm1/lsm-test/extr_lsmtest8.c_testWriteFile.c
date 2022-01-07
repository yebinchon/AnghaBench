
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int assert (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fseek (int *,int,int ) ;
 size_t fwrite (void*,int,int,int *) ;

void testWriteFile(
  const char *zFile,
  int iOff,
  void *pOut,
  int nByte,
  int *pRc
){
  if( *pRc==0 ){
    FILE *fd;
    fd = fopen(zFile, "r+b");
    if( fd==0 ){
      *pRc = 1;
    }else{
      if( 0!=fseek(fd, iOff, SEEK_SET) ){
        *pRc = 1;
      }else{
        assert( nByte>=0 );
        if( (size_t)nByte!=fwrite(pOut, 1, nByte, fd) ){
          *pRc = 1;
        }
      }
      fclose(fd);
    }
  }
}
