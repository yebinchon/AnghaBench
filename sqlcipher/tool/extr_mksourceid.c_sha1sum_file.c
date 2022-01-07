
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBuf ;
typedef int SHA1Context ;
typedef int FILE ;


 int DigestToBase16 (unsigned char*,char*,int) ;
 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,unsigned int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;

__attribute__((used)) static int sha1sum_file(const char *zFilename, char *pCksum){
  FILE *in;
  SHA1Context ctx;
  unsigned char zResult[20];
  char zBuf[10240];

  in = fopen(zFilename,"rb");
  if( in==0 ){
    return 1;
  }
  SHA1Init(&ctx);
  for(;;){
    int n = (int)fread(zBuf, 1, sizeof(zBuf), in);
    if( n<=0 ) break;
    SHA1Update(&ctx, (unsigned char*)zBuf, (unsigned)n);
  }
  fclose(in);
  SHA1Final(zResult, &ctx);
  DigestToBase16(zResult, pCksum, 20);
  return 0;
}
