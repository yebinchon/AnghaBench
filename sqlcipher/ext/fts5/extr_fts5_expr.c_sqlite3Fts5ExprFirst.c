
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_10__ {int bDesc; int * pIndex; TYPE_1__* pRoot; } ;
struct TYPE_9__ {scalar_t__ bEof; scalar_t__ bNomatch; int iRowid; } ;
typedef int Fts5Index ;
typedef TYPE_1__ Fts5ExprNode ;
typedef TYPE_2__ Fts5Expr ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeFirst (TYPE_2__*,TYPE_1__*) ;
 int fts5ExprNodeNext (TYPE_2__*,TYPE_1__*,int,int ) ;
 scalar_t__ fts5RowidCmp (TYPE_2__*,int ,int ) ;

int sqlite3Fts5ExprFirst(Fts5Expr *p, Fts5Index *pIdx, i64 iFirst, int bDesc){
  Fts5ExprNode *pRoot = p->pRoot;
  int rc;

  p->pIndex = pIdx;
  p->bDesc = bDesc;
  rc = fts5ExprNodeFirst(p, pRoot);



  if( rc==SQLITE_OK
   && 0==pRoot->bEof
   && fts5RowidCmp(p, pRoot->iRowid, iFirst)<0
  ){
    rc = fts5ExprNodeNext(p, pRoot, 1, iFirst);
  }


  while( pRoot->bNomatch ){
    assert( pRoot->bEof==0 && rc==SQLITE_OK );
    rc = fts5ExprNodeNext(p, pRoot, 0, 0);
  }
  return rc;
}
