
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nKey; } ;
typedef TYPE_1__ TreeKey ;
struct TYPE_8__ {scalar_t__ iNode; int blob; } ;
typedef TYPE_2__ TreeCursor ;


 int TKV_KEY (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* csrGetKey (TYPE_2__*,int *,int*) ;
 int treeKeycmp (int ,int ,void*,int) ;

__attribute__((used)) static int treeCsrCompare(TreeCursor *pCsr, void *pKey, int nKey, int *pRc){
  TreeKey *p;
  int cmp = 0;
  assert( pCsr->iNode>=0 );
  p = csrGetKey(pCsr, &pCsr->blob, pRc);
  if( p ){
    cmp = treeKeycmp(TKV_KEY(p), p->nKey, pKey, nKey);
  }
  return cmp;
}
