
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (char*,int,long,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* malloc (long) ;
 int rewind (int *) ;
 int stderr ;

__attribute__((used)) static char *readFile(const char *zFilename){
  FILE *in;
  char *z;
  long n;
  size_t got;

  in = fopen(zFilename, "rb");
  if( in==0 ){
    fprintf(stderr, "unable to open '%s' for reading\n", zFilename);
    exit(1);
  }
  fseek(in, 0, SEEK_END);
  n = ftell(in);
  rewind(in);
  z = malloc( n+1 );
  if( z==0 ){
    fprintf(stderr, "cannot allocate %d bytes to store '%s'\n",
            (int)(n+1), zFilename);
    exit(1);
  }
  got = fread(z, 1, n, in);
  fclose(in);
  if( got!=(size_t)n ){
    fprintf(stderr, "only read %d of %d bytes from '%s'\n",
           (int)got, (int)n, zFilename);
    exit(1);
  }
  z[n] = 0;
  return z;
}
