
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int btsFlags; scalar_t__ inTransaction; int pPager; } ;
struct TYPE_8__ {scalar_t__ inTrans; TYPE_1__* db; TYPE_3__* pBt; } ;
struct TYPE_7__ {int nSavepoint; } ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;


 int BTS_READ_ONLY ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;
 int sqlite3PagerOpenSavepoint (int ,int) ;

int sqlite3BtreeBeginStmt(Btree *p, int iStatement){
  int rc;
  BtShared *pBt = p->pBt;
  sqlite3BtreeEnter(p);
  assert( p->inTrans==TRANS_WRITE );
  assert( (pBt->btsFlags & BTS_READ_ONLY)==0 );
  assert( iStatement>0 );
  assert( iStatement>p->db->nSavepoint );
  assert( pBt->inTransaction==TRANS_WRITE );





  rc = sqlite3PagerOpenSavepoint(pBt->pPager, iStatement);
  sqlite3BtreeLeave(p);
  return rc;
}
