
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int iCookie; } ;
struct TYPE_10__ {size_t nn; int * p; } ;
struct TYPE_9__ {int rc; TYPE_3__* pConfig; } ;
typedef int Fts5Structure ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Data ;
typedef TYPE_3__ Fts5Config ;


 int FTS5_DATA_PADDING ;
 int FTS5_STRUCTURE_ROWID ;
 int SQLITE_OK ;
 TYPE_2__* fts5DataRead (TYPE_1__*,int ) ;
 int fts5DataRelease (TYPE_2__*) ;
 int fts5StructureDecode (int *,size_t,int*,int **) ;
 int fts5StructureRelease (int *) ;
 int memset (int *,int ,int ) ;
 int sqlite3Fts5ConfigLoad (TYPE_3__*,int) ;

__attribute__((used)) static Fts5Structure *fts5StructureReadUncached(Fts5Index *p){
  Fts5Structure *pRet = 0;
  Fts5Config *pConfig = p->pConfig;
  int iCookie;
  Fts5Data *pData;

  pData = fts5DataRead(p, FTS5_STRUCTURE_ROWID);
  if( p->rc==SQLITE_OK ){

    memset(&pData->p[pData->nn], 0, FTS5_DATA_PADDING);
    p->rc = fts5StructureDecode(pData->p, pData->nn, &iCookie, &pRet);
    if( p->rc==SQLITE_OK && pConfig->iCookie!=iCookie ){
      p->rc = sqlite3Fts5ConfigLoad(pConfig, iCookie);
    }
    fts5DataRelease(pData);
    if( p->rc!=SQLITE_OK ){
      fts5StructureRelease(pRet);
      pRet = 0;
    }
  }

  return pRet;
}
