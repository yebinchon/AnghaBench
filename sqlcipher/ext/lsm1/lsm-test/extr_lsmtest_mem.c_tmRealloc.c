
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int TmGlobal ;
struct TYPE_2__ {int nByte; } ;
typedef TYPE_1__ TmBlockHdr ;


 int * BLOCK_HDR_SIZE ;
 int MIN (int,int ) ;
 int memcpy (void*,void*,int ) ;
 int tmFree (int *,void*) ;
 void* tmMalloc (int *,int) ;

__attribute__((used)) static void *tmRealloc(TmGlobal *pTm, void *p, int nByte){
  void *pNew;

  pNew = tmMalloc(pTm, nByte);
  if( pNew && p ){
    TmBlockHdr *pHdr;
    u8 *pUser = (u8 *)p;
    pHdr = (TmBlockHdr *)(pUser - BLOCK_HDR_SIZE);
    memcpy(pNew, p, MIN(nByte, pHdr->nByte));
    tmFree(pTm, p);
  }
  return pNew;
}
