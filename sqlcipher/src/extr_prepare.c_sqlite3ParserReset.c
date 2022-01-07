
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bDisable; } ;
struct TYPE_8__ {TYPE_1__ lookaside; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_9__ {scalar_t__ disableLookaside; int pConstExpr; int aLabel; TYPE_2__* db; } ;
typedef TYPE_3__ Parse ;


 int assert (int) ;
 int sqlite3DbFree (TYPE_2__*,int ) ;
 int sqlite3ExprListDelete (TYPE_2__*,int ) ;

void sqlite3ParserReset(Parse *pParse){
  sqlite3 *db = pParse->db;
  sqlite3DbFree(db, pParse->aLabel);
  sqlite3ExprListDelete(db, pParse->pConstExpr);
  if( db ){
    assert( db->lookaside.bDisable >= pParse->disableLookaside );
    db->lookaside.bDisable -= pParse->disableLookaside;
  }
  pParse->disableLookaside = 0;
}
