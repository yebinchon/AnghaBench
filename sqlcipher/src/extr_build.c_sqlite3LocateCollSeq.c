
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int busy; } ;
struct TYPE_14__ {TYPE_1__ init; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_16__ {int xCmp; } ;
struct TYPE_15__ {TYPE_2__* db; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ CollSeq ;


 int ENC (TYPE_2__*) ;
 TYPE_4__* sqlite3FindCollSeq (TYPE_2__*,int ,char const*,int ) ;
 TYPE_4__* sqlite3GetCollSeq (TYPE_3__*,int ,TYPE_4__*,char const*) ;

CollSeq *sqlite3LocateCollSeq(Parse *pParse, const char *zName){
  sqlite3 *db = pParse->db;
  u8 enc = ENC(db);
  u8 initbusy = db->init.busy;
  CollSeq *pColl;

  pColl = sqlite3FindCollSeq(db, enc, zName, initbusy);
  if( !initbusy && (!pColl || !pColl->xCmp) ){
    pColl = sqlite3GetCollSeq(pParse, enc, pColl, zName);
  }

  return pColl;
}
