
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int sqlite3_int64 ;
typedef int i64 ;
struct TYPE_17__ {int nLvl; int iSegid; TYPE_2__* aLvl; } ;
struct TYPE_16__ {TYPE_12__* pData; } ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_14__ {int* p; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5DlidxLvl ;
typedef TYPE_3__ Fts5DlidxIter ;


 int FTS5_DLIDX_ROWID (int,int,int) ;
 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 TYPE_12__* fts5DataRead (TYPE_1__*,int ) ;
 int fts5DlidxIterFirst (TYPE_3__*) ;
 int fts5DlidxIterFree (TYPE_3__*) ;
 int fts5DlidxIterLast (TYPE_1__*,TYPE_3__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3_realloc64 (TYPE_3__*,int) ;

__attribute__((used)) static Fts5DlidxIter *fts5DlidxIterInit(
  Fts5Index *p,
  int bRev,
  int iSegid,
  int iLeafPg
){
  Fts5DlidxIter *pIter = 0;
  int i;
  int bDone = 0;

  for(i=0; p->rc==SQLITE_OK && bDone==0; i++){
    sqlite3_int64 nByte = sizeof(Fts5DlidxIter) + i * sizeof(Fts5DlidxLvl);
    Fts5DlidxIter *pNew;

    pNew = (Fts5DlidxIter*)sqlite3_realloc64(pIter, nByte);
    if( pNew==0 ){
      p->rc = SQLITE_NOMEM;
    }else{
      i64 iRowid = FTS5_DLIDX_ROWID(iSegid, i, iLeafPg);
      Fts5DlidxLvl *pLvl = &pNew->aLvl[i];
      pIter = pNew;
      memset(pLvl, 0, sizeof(Fts5DlidxLvl));
      pLvl->pData = fts5DataRead(p, iRowid);
      if( pLvl->pData && (pLvl->pData->p[0] & 0x0001)==0 ){
        bDone = 1;
      }
      pIter->nLvl = i+1;
    }
  }

  if( p->rc==SQLITE_OK ){
    pIter->iSegid = iSegid;
    if( bRev==0 ){
      fts5DlidxIterFirst(pIter);
    }else{
      fts5DlidxIterLast(p, pIter);
    }
  }

  if( p->rc!=SQLITE_OK ){
    fts5DlidxIterFree(pIter);
    pIter = 0;
  }

  return pIter;
}
