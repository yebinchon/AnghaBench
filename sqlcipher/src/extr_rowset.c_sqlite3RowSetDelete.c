
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;
typedef TYPE_1__ RowSet ;


 int sqlite3DbFree (int ,void*) ;
 int sqlite3RowSetClear (void*) ;

void sqlite3RowSetDelete(void *pArg){
  sqlite3RowSetClear(pArg);
  sqlite3DbFree(((RowSet*)pArg)->db, pArg);
}
