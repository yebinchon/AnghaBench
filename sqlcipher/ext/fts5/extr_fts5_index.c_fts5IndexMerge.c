
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ rc; } ;
struct TYPE_11__ {int nLevel; TYPE_1__* aLevel; } ;
struct TYPE_10__ {int nMerge; int nSeg; } ;
typedef TYPE_1__ Fts5StructureLevel ;
typedef TYPE_2__ Fts5Structure ;
typedef TYPE_3__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5IndexMergeLevel (TYPE_3__*,TYPE_2__**,int,int*) ;
 int fts5StructurePromote (TYPE_3__*,int,TYPE_2__*) ;

__attribute__((used)) static int fts5IndexMerge(
  Fts5Index *p,
  Fts5Structure **ppStruct,
  int nPg,
  int nMin
){
  int nRem = nPg;
  int bRet = 0;
  Fts5Structure *pStruct = *ppStruct;
  while( nRem>0 && p->rc==SQLITE_OK ){
    int iLvl;
    int iBestLvl = 0;
    int nBest = 0;


    assert( pStruct->nLevel>0 );
    for(iLvl=0; iLvl<pStruct->nLevel; iLvl++){
      Fts5StructureLevel *pLvl = &pStruct->aLevel[iLvl];
      if( pLvl->nMerge ){
        if( pLvl->nMerge>nBest ){
          iBestLvl = iLvl;
          nBest = pLvl->nMerge;
        }
        break;
      }
      if( pLvl->nSeg>nBest ){
        nBest = pLvl->nSeg;
        iBestLvl = iLvl;
      }
    }
    if( nBest<nMin && pStruct->aLevel[iBestLvl].nMerge==0 ){
      break;
    }
    bRet = 1;
    fts5IndexMergeLevel(p, &pStruct, iBestLvl, &nRem);
    if( p->rc==SQLITE_OK && pStruct->aLevel[iBestLvl].nMerge==0 ){
      fts5StructurePromote(p, iBestLvl+1, pStruct);
    }
  }
  *ppStruct = pStruct;
  return bRet;
}
