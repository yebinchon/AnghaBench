
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* xCompress ) (int ,char*,int *,char const*,int ) ;int pCtx; } ;
typedef TYPE_1__ lsm_compress ;
struct TYPE_9__ {scalar_t__ aOBuffer; int nBuffer; int nPagesize; TYPE_1__* pCompress; } ;
struct TYPE_8__ {int nData; scalar_t__ aData; int nCompress; } ;
typedef TYPE_2__ Page ;
typedef TYPE_3__ FileSystem ;


 int LSM_NOMEM ;
 int assert (int) ;
 scalar_t__ fsAllocateBuffer (TYPE_3__*,int) ;
 int stub1 (int ,char*,int *,char const*,int ) ;

__attribute__((used)) static int fsCompressIntoBuffer(FileSystem *pFS, Page *pPg){
  lsm_compress *p = pFS->pCompress;

  if( fsAllocateBuffer(pFS, 1) ) return LSM_NOMEM;
  assert( pPg->nData==pFS->nPagesize );

  pPg->nCompress = pFS->nBuffer;
  return p->xCompress(p->pCtx,
      (char *)pFS->aOBuffer, &pPg->nCompress,
      (const char *)pPg->aData, pPg->nData
  );
}
