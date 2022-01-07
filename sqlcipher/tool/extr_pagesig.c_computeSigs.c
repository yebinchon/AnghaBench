
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aBuf ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (unsigned char*,int,unsigned int,int *) ;
 int printf (char*,unsigned int,unsigned char*) ;
 int rewind (int *) ;
 int stderr ;
 int vlogSignature (unsigned char*,unsigned int,unsigned char*) ;

__attribute__((used)) static void computeSigs(const char *zFilename){
  FILE *in = fopen(zFilename, "rb");
  unsigned pgsz;
  size_t got;
  unsigned n;
  unsigned char aBuf[50];
  unsigned char aPage[65536];

  if( in==0 ){
    fprintf(stderr, "cannot open \"%s\"\n", zFilename);
    return;
  }
  got = fread(aBuf, 1, sizeof(aBuf), in);
  if( got!=sizeof(aBuf) ){
    goto endComputeSigs;
  }
  pgsz = aBuf[16]*256 + aBuf[17];
  if( pgsz==1 ) pgsz = 65536;
  if( (pgsz & (pgsz-1))!=0 ){
    fprintf(stderr, "invalid page size: %02x%02x\n", aBuf[16], aBuf[17]);
    goto endComputeSigs;
  }
  rewind(in);
  for(n=1; (got=fread(aPage, 1, pgsz, in))==pgsz; n++){
    vlogSignature(aPage, pgsz, aBuf);
    printf("%4d: %s\n", n, aBuf);
  }

endComputeSigs:
  fclose(in);
}
