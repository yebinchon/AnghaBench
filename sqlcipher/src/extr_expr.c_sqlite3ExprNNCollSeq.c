
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int * pDfltColl; } ;
typedef TYPE_2__ Parse ;
typedef int Expr ;
typedef int CollSeq ;


 int assert (int) ;
 int * sqlite3ExprCollSeq (TYPE_2__*,int *) ;

CollSeq *sqlite3ExprNNCollSeq(Parse *pParse, Expr *pExpr){
  CollSeq *p = sqlite3ExprCollSeq(pParse, pExpr);
  if( p==0 ) p = pParse->db->pDfltColl;
  assert( p!=0 );
  return p;
}
