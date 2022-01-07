
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ rc; } ;
struct TYPE_11__ {TYPE_2__* aLevel; } ;
struct TYPE_10__ {int nSeg; scalar_t__ nMerge; TYPE_1__* aSeg; } ;
struct TYPE_9__ {int pgnoLast; int pgnoFirst; } ;
typedef TYPE_1__ Fts5StructureSegment ;
typedef TYPE_2__ Fts5StructureLevel ;
typedef TYPE_3__ Fts5Structure ;
typedef TYPE_4__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5StructurePromoteTo (TYPE_4__*,int,int,TYPE_3__*) ;

__attribute__((used)) static void fts5StructurePromote(
  Fts5Index *p,
  int iLvl,
  Fts5Structure *pStruct
){
  if( p->rc==SQLITE_OK ){
    int iTst;
    int iPromote = -1;
    int szPromote = 0;
    Fts5StructureSegment *pSeg;
    int szSeg;
    int nSeg = pStruct->aLevel[iLvl].nSeg;

    if( nSeg==0 ) return;
    pSeg = &pStruct->aLevel[iLvl].aSeg[pStruct->aLevel[iLvl].nSeg-1];
    szSeg = (1 + pSeg->pgnoLast - pSeg->pgnoFirst);


    for(iTst=iLvl-1; iTst>=0 && pStruct->aLevel[iTst].nSeg==0; iTst--);
    if( iTst>=0 ){
      int i;
      int szMax = 0;
      Fts5StructureLevel *pTst = &pStruct->aLevel[iTst];
      assert( pTst->nMerge==0 );
      for(i=0; i<pTst->nSeg; i++){
        int sz = pTst->aSeg[i].pgnoLast - pTst->aSeg[i].pgnoFirst + 1;
        if( sz>szMax ) szMax = sz;
      }
      if( szMax>=szSeg ){


        iPromote = iTst;
        szPromote = szMax;
      }
    }



    if( iPromote<0 ){
      iPromote = iLvl;
      szPromote = szSeg;
    }
    fts5StructurePromoteTo(p, iPromote, szPromote, pStruct);
  }
}
