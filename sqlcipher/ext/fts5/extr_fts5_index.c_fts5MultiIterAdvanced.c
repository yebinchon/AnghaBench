
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ rc; } ;
struct TYPE_10__ {int nSeg; TYPE_1__* aSeg; } ;
struct TYPE_9__ {int (* xNext ) (TYPE_3__*,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ Fts5SegIter ;
typedef TYPE_2__ Fts5Iter ;
typedef TYPE_3__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5MultiIterDoCompare (TYPE_2__*,int) ;
 int stub1 (TYPE_3__*,TYPE_1__*,int ) ;

__attribute__((used)) static void fts5MultiIterAdvanced(
  Fts5Index *p,
  Fts5Iter *pIter,
  int iChanged,
  int iMinset
){
  int i;
  for(i=(pIter->nSeg+iChanged)/2; i>=iMinset && p->rc==SQLITE_OK; i=i/2){
    int iEq;
    if( (iEq = fts5MultiIterDoCompare(pIter, i)) ){
      Fts5SegIter *pSeg = &pIter->aSeg[iEq];
      assert( p->rc==SQLITE_OK );
      pSeg->xNext(p, pSeg, 0);
      i = pIter->nSeg + iEq;
    }
  }
}
