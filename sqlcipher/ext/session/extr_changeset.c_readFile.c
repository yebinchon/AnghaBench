
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int FILE ;


 int SEEK_END ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (void*,size_t,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int rewind (int *) ;
 void* sqlite3_malloc64 (int) ;
 int stderr ;

__attribute__((used)) static void readFile(const char *zFilename, int *pSz, void **ppBuf){
  FILE *f;
  sqlite3_int64 sz;
  void *pBuf;
  f = fopen(zFilename, "rb");
  if( f==0 ){
    fprintf(stderr, "cannot open \"%s\" for reading\n", zFilename);
    exit(1);
  }
  fseek(f, 0, SEEK_END);
  sz = ftell(f);
  rewind(f);
  pBuf = sqlite3_malloc64( sz ? sz : 1 );
  if( pBuf==0 ){
    fprintf(stderr, "cannot allocate %d to hold content of \"%s\"\n",
            (int)sz, zFilename);
    exit(1);
  }
  if( sz>0 ){
    if( fread(pBuf, (size_t)sz, 1, f)!=1 ){
      fprintf(stderr, "cannot read all %d bytes of \"%s\"\n",
              (int)sz, zFilename);
      exit(1);
    }
    fclose(f);
  }
  *pSz = (int)sz;
  *ppBuf = pBuf;
}
