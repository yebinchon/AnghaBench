
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 unsigned int FUZZ_SHOW_ERRORS ;
 unsigned int FUZZ_SHOW_MAX_DELAY ;
 unsigned int FUZZ_SQL_TRACE ;
 int LLVMFuzzerTestOneInput (int *,size_t) ;
 int SEEK_END ;
 int exit (int) ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (int *,size_t,int,int *) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int ossfuzz_set_debug_flags (unsigned int) ;
 int printf (char*,...) ;
 int * realloc (int *,size_t) ;
 int rewind (int *) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;

int main(int argc, char **argv){
  FILE *in;
  int i;
  int nErr = 0;
  uint8_t *zBuf = 0;
  size_t sz;
  unsigned mDebug = 0;

  for(i=1; i<argc; i++){
    const char *zFilename = argv[i];
    if( zFilename[0]=='-' ){
      if( zFilename[1]=='-' ) zFilename++;
      if( strcmp(zFilename, "-show-errors")==0 ){
        mDebug |= FUZZ_SHOW_ERRORS;
        ossfuzz_set_debug_flags(mDebug);
      }else
      if( strcmp(zFilename, "-show-max-delay")==0 ){
        mDebug |= FUZZ_SHOW_MAX_DELAY;
        ossfuzz_set_debug_flags(mDebug);
      }else
      if( strcmp(zFilename, "-sql-trace")==0 ){
        mDebug |= FUZZ_SQL_TRACE;
        ossfuzz_set_debug_flags(mDebug);
      }else
      {
        printf("unknown option \"%s\"\n", argv[i]);
        printf("should be one of: --show-errors --show-max-delay"
               " --sql-trace\n");
        exit(1);
      }
      continue;
    }
    in = fopen(zFilename, "rb");
    if( in==0 ){
      fprintf(stderr, "cannot open \"%s\"\n", zFilename);
      nErr++;
      continue;
    }
    fseek(in, 0, SEEK_END);
    sz = ftell(in);
    rewind(in);
    zBuf = realloc(zBuf, sz);
    if( zBuf==0 ){
      fprintf(stderr, "cannot malloc() for %d bytes\n", (int)sz);
      exit(1);
    }
    if( fread(zBuf, sz, 1, in)!=1 ){
      fprintf(stderr, "cannot read %d bytes from \"%s\"\n",
                       (int)sz, zFilename);
      nErr++;
    }else{
      printf("%s... ", zFilename);
      if( mDebug ) printf("\n");
      fflush(stdout);
      (void)LLVMFuzzerTestOneInput(zBuf, sz);
      if( mDebug ) printf("%s: ", zFilename);
      printf("ok\n");
    }
    fclose(in);
  }
  free(zBuf);
  return nErr;
}
