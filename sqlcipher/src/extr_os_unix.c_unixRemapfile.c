
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; scalar_t__ mmapSizeActual; scalar_t__ nFetchOut; scalar_t__ mmapSize; scalar_t__ mmapSizeMax; int ctrlFlags; void* pMapRegion; int zPath; } ;
typedef TYPE_1__ unixFile ;
typedef int u8 ;
typedef scalar_t__ i64 ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int MREMAP_MAYMOVE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SQLITE_OK ;
 int UNIXFILE_RDONLY ;
 int assert (int) ;
 int osGetpagesize () ;
 int * osMmap (int *,scalar_t__,int,int ,int,scalar_t__) ;
 int * osMremap (int *,scalar_t__,scalar_t__,int ) ;
 int osMunmap (int *,scalar_t__) ;
 int unixLogError (int ,char const*,int ) ;

__attribute__((used)) static void unixRemapfile(
  unixFile *pFd,
  i64 nNew
){
  const char *zErr = "mmap";
  int h = pFd->h;
  u8 *pOrig = (u8 *)pFd->pMapRegion;
  i64 nOrig = pFd->mmapSizeActual;
  u8 *pNew = 0;
  int flags = PROT_READ;

  assert( pFd->nFetchOut==0 );
  assert( nNew>pFd->mmapSize );
  assert( nNew<=pFd->mmapSizeMax );
  assert( nNew>0 );
  assert( pFd->mmapSizeActual>=pFd->mmapSize );
  assert( MAP_FAILED!=0 );





  if( pOrig ){



    const int szSyspage = osGetpagesize();
    i64 nReuse = (pFd->mmapSize & ~(szSyspage-1));

    u8 *pReq = &pOrig[nReuse];


    if( nReuse!=nOrig ){
      osMunmap(pReq, nOrig-nReuse);
    }





    pNew = osMmap(pReq, nNew-nReuse, flags, MAP_SHARED, h, nReuse);
    if( pNew!=MAP_FAILED ){
      if( pNew!=pReq ){
        osMunmap(pNew, nNew - nReuse);
        pNew = 0;
      }else{
        pNew = pOrig;
      }
    }



    if( pNew==MAP_FAILED || pNew==0 ){
      osMunmap(pOrig, nReuse);
    }
  }


  if( pNew==0 ){
    pNew = osMmap(0, nNew, flags, MAP_SHARED, h, 0);
  }

  if( pNew==MAP_FAILED ){
    pNew = 0;
    nNew = 0;
    unixLogError(SQLITE_OK, zErr, pFd->zPath);




    pFd->mmapSizeMax = 0;
  }
  pFd->pMapRegion = (void *)pNew;
  pFd->mmapSize = pFd->mmapSizeActual = nNew;
}
