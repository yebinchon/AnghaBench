
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; scalar_t__ zErr; } ;
typedef TYPE_1__ Error ;


 int SQLITE_OK ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void clear_error_x(
  Error *pErr,
  int rc
){
  if( pErr->rc==rc ){
    pErr->rc = SQLITE_OK;
    sqlite3_free(pErr->zErr);
    pErr->zErr = 0;
  }
}
