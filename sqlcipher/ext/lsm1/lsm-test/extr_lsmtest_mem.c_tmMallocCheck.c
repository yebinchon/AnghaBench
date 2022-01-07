
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__** aHash; TYPE_2__* pFirst; } ;
typedef TYPE_1__ TmGlobal ;
struct TYPE_7__ {scalar_t__ nByte; struct TYPE_7__* pNext; } ;
typedef TYPE_2__ TmBlockHdr ;
struct TYPE_8__ {int nOutAlloc; int nOutByte; int nByte; int nAlloc; int * aFrame; struct TYPE_8__* pNext; } ;
typedef TYPE_3__ TmAgg ;
typedef int FILE ;


 int ArraySize (TYPE_3__**) ;
 int TM_BACKTRACE ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void tmMallocCheck(
  TmGlobal *pTm,
  int *pnLeakAlloc,
  int *pnLeakByte,
  FILE *pFile
){
  TmBlockHdr *pHdr;
  int nLeak = 0;
  int nByte = 0;

  if( pTm==0 ) return;

  for(pHdr=pTm->pFirst; pHdr; pHdr=pHdr->pNext){
    nLeak++;
    nByte += pHdr->nByte;
  }
  if( pnLeakAlloc ) *pnLeakAlloc = nLeak;
  if( pnLeakByte ) *pnLeakByte = nByte;
  (void)pFile;

}
