
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_5__ {int * pBt; } ;
typedef int Btree ;


 int sqlite3FindDbName (TYPE_2__*,char const*) ;

Btree *sqlite3DbNameToBtree(sqlite3 *db, const char *zDbName){
  int iDb = zDbName ? sqlite3FindDbName(db, zDbName) : 0;
  return iDb<0 ? 0 : db->aDb[iDb].pBt;
}
