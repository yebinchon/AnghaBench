
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zLine ;
typedef int SHA3Context ;
typedef int FILE ;


 int DigestToBase16 (int ,char*,int) ;
 int SHA3Final (int *) ;
 int SHA3Init (int *,int) ;
 int SHA3Update (int *,unsigned char*,unsigned int) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int memcpy (char*,char*,int) ;
 char* nextToken (char*) ;
 int printf (char*,char*,...) ;
 int sha1sum_file (char*,char*) ;
 int sha3sum_file (char*,int,char*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int usage (char*) ;

int main(int argc, char **argv){
  const char *zManifest = 0;
  int i;
  int bVerbose = 0;
  FILE *in;
  int allValid = 1;
  int rc;
  SHA3Context ctx;
  char zDate[50];
  char zHash[100];
  char zLine[20000];

  for(i=1; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' ){
      if( z[1]=='-' ) z++;
      if( strcmp(z, "-v")==0 ){
        bVerbose = 1;
      }else
      {
        fprintf(stderr, "unknown option \"%s\"", argv[i]);
        exit(1);
      }
    }else if( zManifest!=0 ){
      usage(argv[0]);
    }else{
      zManifest = z;
    }
  }
  if( zManifest==0 ) usage(argv[0]);
  zDate[0] = 0;
  in = fopen(zManifest, "rb");
  if( in==0 ){
    fprintf(stderr, "cannot open \"%s\" for reading\n", zManifest);
    exit(1);
  }
  SHA3Init(&ctx, 256);
  while( fgets(zLine, sizeof(zLine), in) ){
    if( strncmp(zLine,"# Remove this line", 18)!=0 ){
      SHA3Update(&ctx, (unsigned char*)zLine, (unsigned)strlen(zLine));
    }
    if( strncmp(zLine, "D 20", 4)==0 ){
      memcpy(zDate, &zLine[2], 10);
      zDate[10] = ' ';
      memcpy(&zDate[11], &zLine[13], 8);
      zDate[19] = 0;
      continue;
    }
    if( strncmp(zLine, "F ", 2)==0 ){
      char *zFilename = &zLine[2];
      char *zMHash = nextToken(zFilename);
      nextToken(zMHash);
      if( strlen(zMHash)==40 ){
        rc = sha1sum_file(zFilename, zHash);
      }else{
        rc = sha3sum_file(zFilename, 256, zHash);
      }
      if( rc ){
        allValid = 0;
        if( bVerbose ){
          printf("hash failed: %s\n", zFilename);
        }
      }else if( strcmp(zHash, zMHash)!=0 ){
        allValid = 0;
        if( bVerbose ){
          printf("wrong hash: %s\n", zFilename);
          printf("... expected: %s\n", zMHash);
          printf("... got:      %s\n", zHash);
        }
      }
    }
  }
  fclose(in);
  DigestToBase16(SHA3Final(&ctx), zHash, 256/8);
  if( !allValid ){
    printf("%s %.60salt1\n", zDate, zHash);
  }else{
    printf("%s %s\n", zDate, zHash);
  }
  return 0;
}
