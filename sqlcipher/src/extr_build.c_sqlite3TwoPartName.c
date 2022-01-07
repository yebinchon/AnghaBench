
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int iDb; scalar_t__ busy; } ;
struct TYPE_13__ {int mDbFlags; TYPE_1__ init; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_14__ {scalar_t__ n; } ;
typedef TYPE_3__ Token ;
struct TYPE_15__ {TYPE_2__* db; } ;
typedef TYPE_4__ Parse ;


 int DBFLAG_Vacuum ;
 scalar_t__ IN_RENAME_OBJECT ;
 int assert (int) ;
 int sqlite3ErrorMsg (TYPE_4__*,char*,...) ;
 int sqlite3FindDb (TYPE_2__*,TYPE_3__*) ;

int sqlite3TwoPartName(
  Parse *pParse,
  Token *pName1,
  Token *pName2,
  Token **pUnqual
){
  int iDb;
  sqlite3 *db = pParse->db;

  assert( pName2!=0 );
  if( pName2->n>0 ){
    if( db->init.busy ) {
      sqlite3ErrorMsg(pParse, "corrupt database");
      return -1;
    }
    *pUnqual = pName2;
    iDb = sqlite3FindDb(db, pName1);
    if( iDb<0 ){
      sqlite3ErrorMsg(pParse, "unknown database %T", pName1);
      return -1;
    }
  }else{
    assert( db->init.iDb==0 || db->init.busy || IN_RENAME_OBJECT
             || (db->mDbFlags & DBFLAG_Vacuum)!=0);
    iDb = db->init.iDb;
    *pUnqual = pName1;
  }
  return iDb;
}
