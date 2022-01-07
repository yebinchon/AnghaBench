
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fwrite (void const*,int,int,int *) ;
 int stderr ;

__attribute__((used)) static void writeFile(const char *zFilename, const void *pData, int nData){
  FILE *out;
  int n;
  out = fopen(zFilename, "wb");
  if( out==0 ){
    fprintf(stderr, "cannot open \"%s\" for writing\n", zFilename);
    exit(1);
  }
  n = (int)fwrite(pData, 1, nData, out);
  fclose(out);
  if( n!=nData ){
    fprintf(stderr, "only wrote %d of %d bytes to \"%s\"\n",n,nData,zFilename);
    exit(1);
  }
}
