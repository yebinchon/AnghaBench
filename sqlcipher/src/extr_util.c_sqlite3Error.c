
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errCode; scalar_t__ pErr; } ;
typedef TYPE_1__ sqlite3 ;


 int assert (int) ;
 int sqlite3ErrorFinish (TYPE_1__*,int) ;

void sqlite3Error(sqlite3 *db, int err_code){
  assert( db!=0 );
  db->errCode = err_code;
  if( err_code || db->pErr ) sqlite3ErrorFinish(db, err_code);
}
