
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int fd ;
 int lseek (int ,int,int ) ;
 unsigned char* malloc (int) ;
 int out_of_memory () ;
 int read (int ,unsigned char*,int) ;

__attribute__((used)) static unsigned char *getContent(int ofst, int nByte){
  unsigned char *aData;
  aData = malloc(nByte);
  if( aData==0 ) out_of_memory();
  lseek(fd, ofst, SEEK_SET);
  read(fd, aData, nByte);
  return aData;
}
