
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nDb; TYPE_3__* aDb; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_8__ {int zDbSName; scalar_t__ pBt; } ;
struct TYPE_7__ {TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Db ;


 int sqlite3CodeVerifySchema (TYPE_2__*,int) ;
 scalar_t__ sqlite3StrICmp (char const*,int ) ;

void sqlite3CodeVerifyNamedSchema(Parse *pParse, const char *zDb){
  sqlite3 *db = pParse->db;
  int i;
  for(i=0; i<db->nDb; i++){
    Db *pDb = &db->aDb[i];
    if( pDb->pBt && (!zDb || 0==sqlite3StrICmp(zDb, pDb->zDbSName)) ){
      sqlite3CodeVerifySchema(pParse, i);
    }
  }
}
