
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nDb; TYPE_1__* aDb; } ;
struct TYPE_9__ {int cookieMask; TYPE_3__* db; } ;
struct TYPE_8__ {scalar_t__ pBt; } ;
typedef TYPE_2__ Parse ;


 int DbMaskSet (int ,int) ;
 scalar_t__ DbMaskTest (int ,int) ;
 int OMIT_TEMPDB ;
 int SQLITE_MAX_ATTACHED ;
 int assert (int) ;
 int sqlite3OpenTempDatabase (TYPE_2__*) ;
 TYPE_2__* sqlite3ParseToplevel (TYPE_2__*) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;

void sqlite3CodeVerifySchema(Parse *pParse, int iDb){
  Parse *pToplevel = sqlite3ParseToplevel(pParse);

  assert( iDb>=0 && iDb<pParse->db->nDb );
  assert( pParse->db->aDb[iDb].pBt!=0 || iDb==1 );
  assert( iDb<SQLITE_MAX_ATTACHED+2 );
  assert( sqlite3SchemaMutexHeld(pParse->db, iDb, 0) );
  if( DbMaskTest(pToplevel->cookieMask, iDb)==0 ){
    DbMaskSet(pToplevel->cookieMask, iDb);
    if( !OMIT_TEMPDB && iDb==1 ){
      sqlite3OpenTempDatabase(pToplevel);
    }
  }
}
