
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (void*,long,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int rewind (int *) ;
 int sqlite3_free (void*) ;
 void* sqlite3_malloc (long) ;
 int sqlite3_result_text (int *,void*,long,int (*) (void*)) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void readfileFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zName;
  FILE *in;
  long nIn;
  void *pBuf;

  zName = (const char*)sqlite3_value_text(argv[0]);
  if( zName==0 ) return;
  in = fopen(zName, "rb");
  if( in==0 ) return;
  fseek(in, 0, SEEK_END);
  nIn = ftell(in);
  rewind(in);
  pBuf = sqlite3_malloc( nIn );
  if( pBuf && 1==fread(pBuf, nIn, 1, in) ){
    sqlite3_result_text(context, pBuf, nIn, sqlite3_free);
  }else{
    sqlite3_free(pBuf);
  }
  fclose(in);
}
