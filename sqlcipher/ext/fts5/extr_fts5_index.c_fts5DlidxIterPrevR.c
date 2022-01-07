
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nLvl; TYPE_1__* aLvl; int iSegid; } ;
struct TYPE_7__ {scalar_t__ bEof; scalar_t__ pData; int iLeafPgno; } ;
typedef int Fts5Index ;
typedef TYPE_1__ Fts5DlidxLvl ;
typedef TYPE_2__ Fts5DlidxIter ;


 int FTS5_DLIDX_ROWID (int ,int,int ) ;
 int assert (int) ;
 scalar_t__ fts5DataRead (int *,int ) ;
 int fts5DataRelease (scalar_t__) ;
 scalar_t__ fts5DlidxLvlNext (TYPE_1__*) ;
 scalar_t__ fts5DlidxLvlPrev (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int fts5DlidxIterPrevR(Fts5Index *p, Fts5DlidxIter *pIter, int iLvl){
  Fts5DlidxLvl *pLvl = &pIter->aLvl[iLvl];

  assert( iLvl<pIter->nLvl );
  if( fts5DlidxLvlPrev(pLvl) ){
    if( (iLvl+1) < pIter->nLvl ){
      fts5DlidxIterPrevR(p, pIter, iLvl+1);
      if( pLvl[1].bEof==0 ){
        fts5DataRelease(pLvl->pData);
        memset(pLvl, 0, sizeof(Fts5DlidxLvl));
        pLvl->pData = fts5DataRead(p,
            FTS5_DLIDX_ROWID(pIter->iSegid, iLvl, pLvl[1].iLeafPgno)
        );
        if( pLvl->pData ){
          while( fts5DlidxLvlNext(pLvl)==0 );
          pLvl->bEof = 0;
        }
      }
    }
  }

  return pIter->aLvl[0].bEof;
}
