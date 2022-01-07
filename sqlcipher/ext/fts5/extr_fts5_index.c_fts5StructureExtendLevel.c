
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_5__ {TYPE_1__* aLevel; } ;
struct TYPE_4__ {int nSeg; int * aSeg; } ;
typedef int Fts5StructureSegment ;
typedef TYPE_1__ Fts5StructureLevel ;
typedef TYPE_2__ Fts5Structure ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int * sqlite3_realloc64 (int *,int) ;

__attribute__((used)) static void fts5StructureExtendLevel(
  int *pRc,
  Fts5Structure *pStruct,
  int iLvl,
  int nExtra,
  int bInsert
){
  if( *pRc==SQLITE_OK ){
    Fts5StructureLevel *pLvl = &pStruct->aLevel[iLvl];
    Fts5StructureSegment *aNew;
    sqlite3_int64 nByte;

    nByte = (pLvl->nSeg + nExtra) * sizeof(Fts5StructureSegment);
    aNew = sqlite3_realloc64(pLvl->aSeg, nByte);
    if( aNew ){
      if( bInsert==0 ){
        memset(&aNew[pLvl->nSeg], 0, sizeof(Fts5StructureSegment) * nExtra);
      }else{
        int nMove = pLvl->nSeg * sizeof(Fts5StructureSegment);
        memmove(&aNew[nExtra], aNew, nMove);
        memset(aNew, 0, sizeof(Fts5StructureSegment) * nExtra);
      }
      pLvl->aSeg = aNew;
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }
}
