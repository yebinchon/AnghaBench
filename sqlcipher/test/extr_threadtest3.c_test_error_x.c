
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; char* zErr; } ;
typedef TYPE_1__ Error ;


 int SQLITE_OK ;
 int sqlite3_free (char*) ;

__attribute__((used)) static void test_error_x(
  Error *pErr,
  char *zErr
){
  if( pErr->rc==SQLITE_OK ){
    pErr->rc = 1;
    pErr->zErr = zErr;
  }else{
    sqlite3_free(zErr);
  }
}
