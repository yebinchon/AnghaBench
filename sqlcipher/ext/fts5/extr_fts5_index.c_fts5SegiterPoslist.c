
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int sCtx ;
struct TYPE_19__ {size_t n; TYPE_2__* p; } ;
struct TYPE_18__ {TYPE_1__* pConfig; int rc; } ;
struct TYPE_17__ {size_t nPos; } ;
struct TYPE_16__ {int eState; int * pColset; TYPE_6__* pBuf; } ;
struct TYPE_15__ {int * pColset; TYPE_6__* pBuf; } ;
struct TYPE_14__ {scalar_t__ eDetail; } ;
typedef TYPE_2__ PoslistOffsetsCtx ;
typedef TYPE_3__ PoslistCallbackCtx ;
typedef TYPE_4__ Fts5SegIter ;
typedef TYPE_5__ Fts5Index ;
typedef int Fts5Colset ;
typedef TYPE_6__ Fts5Buffer ;


 int FTS5_DATA_ZERO_PADDING ;
 scalar_t__ FTS5_DETAIL_FULL ;
 int assert (int) ;
 scalar_t__ fts5BufferGrow (int *,TYPE_6__*,int) ;
 int fts5ChunkIterate (TYPE_5__*,TYPE_4__*,void*,int ) ;
 int fts5IndexColsetTest (int *,int ) ;
 int fts5PoslistCallback ;
 int fts5PoslistFilterCallback ;
 int fts5PoslistOffsetsCallback ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void fts5SegiterPoslist(
  Fts5Index *p,
  Fts5SegIter *pSeg,
  Fts5Colset *pColset,
  Fts5Buffer *pBuf
){
  if( 0==fts5BufferGrow(&p->rc, pBuf, pSeg->nPos+FTS5_DATA_ZERO_PADDING) ){
    memset(&pBuf->p[pBuf->n+pSeg->nPos], 0, FTS5_DATA_ZERO_PADDING);
    if( pColset==0 ){
      fts5ChunkIterate(p, pSeg, (void*)pBuf, fts5PoslistCallback);
    }else{
      if( p->pConfig->eDetail==FTS5_DETAIL_FULL ){
        PoslistCallbackCtx sCtx;
        sCtx.pBuf = pBuf;
        sCtx.pColset = pColset;
        sCtx.eState = fts5IndexColsetTest(pColset, 0);
        assert( sCtx.eState==0 || sCtx.eState==1 );
        fts5ChunkIterate(p, pSeg, (void*)&sCtx, fts5PoslistFilterCallback);
      }else{
        PoslistOffsetsCtx sCtx;
        memset(&sCtx, 0, sizeof(sCtx));
        sCtx.pBuf = pBuf;
        sCtx.pColset = pColset;
        fts5ChunkIterate(p, pSeg, (void*)&sCtx, fts5PoslistOffsetsCallback);
      }
    }
  }
}
