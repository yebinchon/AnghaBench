
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fwrite (char const*,int,int ,int *) ;
 int sqlite3_result_int64 (int *,scalar_t__) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void writefileFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  FILE *out;
  const char *z;
  sqlite3_int64 rc;
  const char *zFile;

  (void)argc;
  zFile = (const char*)sqlite3_value_text(argv[0]);
  if( zFile==0 ) return;
  out = fopen(zFile, "wb");
  if( out==0 ) return;
  z = (const char*)sqlite3_value_blob(argv[1]);
  if( z==0 ){
    rc = 0;
  }else{
    rc = fwrite(z, 1, sqlite3_value_bytes(argv[1]), out);
  }
  fclose(out);
  sqlite3_result_int64(context, rc);
}
