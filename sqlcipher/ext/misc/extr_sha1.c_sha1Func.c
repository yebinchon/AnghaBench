
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int SHA1Context ;


 int SQLITE_BLOB ;
 int SQLITE_NULL ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int hash_finish (int *,char*) ;
 int hash_init (int *) ;
 int hash_step (int *,int ,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void sha1Func(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  SHA1Context cx;
  int eType = sqlite3_value_type(argv[0]);
  int nByte = sqlite3_value_bytes(argv[0]);
  char zOut[44];

  assert( argc==1 );
  if( eType==SQLITE_NULL ) return;
  hash_init(&cx);
  if( eType==SQLITE_BLOB ){
    hash_step(&cx, sqlite3_value_blob(argv[0]), nByte);
  }else{
    hash_step(&cx, sqlite3_value_text(argv[0]), nByte);
  }
  hash_finish(&cx, zOut);
  sqlite3_result_text(context, zOut, 40, SQLITE_TRANSIENT);
}
