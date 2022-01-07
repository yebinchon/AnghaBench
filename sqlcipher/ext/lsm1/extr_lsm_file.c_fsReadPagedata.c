
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {int (* xUncompress ) (int ,char*,int*,char const*,int) ;int pCtx; } ;
typedef TYPE_2__ lsm_compress ;
typedef int i64 ;
typedef int aSz ;
struct TYPE_13__ {int nBuffer; int* aIBuffer; int nPagesize; TYPE_2__* pCompress; } ;
struct TYPE_12__ {int nCompress; TYPE_1__* pFS; scalar_t__ aData; int iPg; } ;
struct TYPE_10__ {int nPagesize; } ;
typedef int Segment ;
typedef TYPE_3__ Page ;
typedef TYPE_4__ FileSystem ;


 int LSM_CORRUPT_BKPT ;
 int LSM_NOMEM ;
 int LSM_OK ;
 int assert (int ) ;
 int fsAddOffset (TYPE_4__*,int *,int ,int,int *) ;
 scalar_t__ fsAllocateBuffer (TYPE_4__*,int ) ;
 int fsReadData (TYPE_4__*,int *,int ,int*,int) ;
 scalar_t__ getRecordSize (int*,int*) ;
 int stub1 (int ,char*,int*,char const*,int) ;

__attribute__((used)) static int fsReadPagedata(
  FileSystem *pFS,
  Segment *pSeg,
  Page *pPg,
  int *pnSpace
){
  lsm_compress *p = pFS->pCompress;
  i64 iOff = pPg->iPg;
  u8 aSz[3];
  int rc;

  assert( p && pPg->nCompress==0 );

  if( fsAllocateBuffer(pFS, 0) ) return LSM_NOMEM;

  rc = fsReadData(pFS, pSeg, iOff, aSz, sizeof(aSz));

  if( rc==LSM_OK ){
    int bFree;
    if( aSz[0] & 0x80 ){
      pPg->nCompress = (int)getRecordSize(aSz, &bFree);
    }else{
      pPg->nCompress = (int)aSz[0] - sizeof(aSz)*2;
      bFree = 1;
    }
    if( bFree ){
      if( pnSpace ){
        *pnSpace = pPg->nCompress + sizeof(aSz)*2;
      }else{
        rc = LSM_CORRUPT_BKPT;
      }
    }else{
      rc = fsAddOffset(pFS, pSeg, iOff, 3, &iOff);
      if( rc==LSM_OK ){
        if( pPg->nCompress>pFS->nBuffer ){
          rc = LSM_CORRUPT_BKPT;
        }else{
          rc = fsReadData(pFS, pSeg, iOff, pFS->aIBuffer, pPg->nCompress);
        }
        if( rc==LSM_OK ){
          int n = pFS->nPagesize;
          rc = p->xUncompress(p->pCtx,
              (char *)pPg->aData, &n,
              (const char *)pFS->aIBuffer, pPg->nCompress
          );
          if( rc==LSM_OK && n!=pPg->pFS->nPagesize ){
            rc = LSM_CORRUPT_BKPT;
          }
        }
      }
    }
  }
  return rc;
}
