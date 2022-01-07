
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fatalError (char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (char*,int,long,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int rewind (int *) ;
 char* sqlite3_malloc (long) ;

__attribute__((used)) static char *readFile(const char *zFilename){
  FILE *in = fopen(zFilename, "rb");
  long sz;
  char *z;
  if( in==0 ){
    fatalError("cannot open \"%s\" for reading", zFilename);
  }
  fseek(in, 0, SEEK_END);
  sz = ftell(in);
  rewind(in);
  z = sqlite3_malloc( sz+1 );
  sz = (long)fread(z, 1, sz, in);
  z[sz] = 0;
  fclose(in);
  return z;
}
