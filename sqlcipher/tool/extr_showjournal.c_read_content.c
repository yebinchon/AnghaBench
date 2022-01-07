
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int db ;
 int fprintf (int ,char*,int,int,...) ;
 scalar_t__ fread (unsigned char*,int,int,int ) ;
 int fseek (int ,int,int ) ;
 unsigned char* malloc (int) ;
 int memset (unsigned char*,int ,int) ;
 int out_of_memory () ;
 int stderr ;

__attribute__((used)) static unsigned char *read_content(int N, int iOfst){
  int got;
  unsigned char *pBuf = malloc(N);
  if( pBuf==0 ) out_of_memory();
  fseek(db, iOfst, SEEK_SET);
  got = (int)fread(pBuf, 1, N, db);
  if( got<0 ){
    fprintf(stderr, "I/O error reading %d bytes from %d\n", N, iOfst);
    memset(pBuf, 0, N);
  }else if( got<N ){
    fprintf(stderr, "Short read: got only %d of %d bytes from %d\n",
                     got, N, iOfst);
    memset(&pBuf[got], 0, N-got);
  }
  return pBuf;
}
