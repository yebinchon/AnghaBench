
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3rbu ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_STATIC ;
 int assert (int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 scalar_t__ rbuIsVacuum (int *) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 int * sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void rbuTargetNameFunc(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  sqlite3rbu *p = sqlite3_user_data(pCtx);
  const char *zIn;
  assert( argc==1 || argc==2 );

  zIn = (const char*)sqlite3_value_text(argv[0]);
  if( zIn ){
    if( rbuIsVacuum(p) ){
      if( argc==1 || 0==sqlite3_value_int(argv[1]) ){
        sqlite3_result_text(pCtx, zIn, -1, SQLITE_STATIC);
      }
    }else{
      if( strlen(zIn)>4 && memcmp("data", zIn, 4)==0 ){
        int i;
        for(i=4; zIn[i]>='0' && zIn[i]<='9'; i++);
        if( zIn[i]=='_' && zIn[i+1] ){
          sqlite3_result_text(pCtx, &zIn[i+1], -1, SQLITE_STATIC);
        }
      }
    }
  }
}
