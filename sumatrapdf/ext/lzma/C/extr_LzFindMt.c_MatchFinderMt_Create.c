
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_9__ {int historySize; int* hashBuf; int* btBuf; int btSync; int hashSync; int * MatchFinder; } ;
struct TYPE_8__ {scalar_t__ (* Alloc ) (TYPE_1__*,int) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CMatchFinderMt ;
typedef int CMatchFinder ;


 int BtThreadFunc2 ;
 int HashThreadFunc2 ;
 int MatchFinder_Create (int *,int,int,int,int,TYPE_1__*) ;
 int MtSync_Create (int *,int ,TYPE_2__*,int ) ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_ERROR_PARAM ;
 int SZ_OK ;
 int kBtBufferSize ;
 int kHashBufferSize ;
 int kMtBtBlockSize ;
 int kMtBtNumBlocks ;
 scalar_t__ kMtHashBlockSize ;
 int kMtHashNumBlocks ;
 scalar_t__ stub1 (TYPE_1__*,int) ;

SRes MatchFinderMt_Create(CMatchFinderMt *p, UInt32 historySize, UInt32 keepAddBufferBefore,
    UInt32 matchMaxLen, UInt32 keepAddBufferAfter, ISzAlloc *alloc)
{
  CMatchFinder *mf = p->MatchFinder;
  p->historySize = historySize;
  if (kMtBtBlockSize <= matchMaxLen * 4)
    return SZ_ERROR_PARAM;
  if (p->hashBuf == 0)
  {
    p->hashBuf = (UInt32 *)alloc->Alloc(alloc, (kHashBufferSize + kBtBufferSize) * sizeof(UInt32));
    if (p->hashBuf == 0)
      return SZ_ERROR_MEM;
    p->btBuf = p->hashBuf + kHashBufferSize;
  }
  keepAddBufferBefore += (kHashBufferSize + kBtBufferSize);
  keepAddBufferAfter += kMtHashBlockSize;
  if (!MatchFinder_Create(mf, historySize, keepAddBufferBefore, matchMaxLen, keepAddBufferAfter, alloc))
    return SZ_ERROR_MEM;

  RINOK(MtSync_Create(&p->hashSync, HashThreadFunc2, p, kMtHashNumBlocks));
  RINOK(MtSync_Create(&p->btSync, BtThreadFunc2, p, kMtBtNumBlocks));
  return SZ_OK;
}
