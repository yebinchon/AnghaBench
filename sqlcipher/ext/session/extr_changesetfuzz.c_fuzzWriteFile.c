
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int fwrite (void*,int,int,int *) ;
 int stderr ;

__attribute__((used)) static void fuzzWriteFile(const char *zFilename, void *pBuf, int nBuf){
  FILE *f;
  f = fopen(zFilename, "wb");
  if( f==0 ){
    fprintf(stderr, "cannot open \"%s\" for writing\n", zFilename);
    exit(1);
  }
  if( fwrite(pBuf, nBuf, 1, f)!=1 ){
    fprintf(stderr, "cannot write to \"%s\"\n", zFilename);
    exit(1);
  }
  fclose(f);
}
