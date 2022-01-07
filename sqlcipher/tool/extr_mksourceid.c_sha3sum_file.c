
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBuf ;
typedef int SHA3Context ;
typedef int FILE ;


 int DigestToBase16 (int ,char*,int) ;
 int SHA3Final (int *) ;
 int SHA3Init (int *,int) ;
 int SHA3Update (int *,unsigned char*,unsigned int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;

__attribute__((used)) static int sha3sum_file(const char *zFilename, int iSize, char *pCksum){
  FILE *in;
  SHA3Context ctx;
  char zBuf[10240];

  in = fopen(zFilename,"rb");
  if( in==0 ){
    return 1;
  }
  SHA3Init(&ctx, iSize);
  for(;;){
    int n = (int)fread(zBuf, 1, sizeof(zBuf), in);
    if( n<=0 ) break;
    SHA3Update(&ctx, (unsigned char*)zBuf, (unsigned)n);
  }
  fclose(in);
  DigestToBase16(SHA3Final(&ctx), pCksum, iSize/8);
  return 0;
}
