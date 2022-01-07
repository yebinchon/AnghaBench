
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_21__ {scalar_t__ btMode; int bigHash; } ;
struct TYPE_18__ {int * litProbs; } ;
struct TYPE_20__ {int mtMode; unsigned int lc; unsigned int lp; unsigned int lclp; scalar_t__ dictSize; int matchFinder; TYPE_7__ matchFinderBase; TYPE_7__* matchFinderObj; int numFastBytes; TYPE_7__ matchFinderMt; TYPE_1__ saveState; int * litProbs; int fastMode; scalar_t__ multiThread; int rc; } ;
struct TYPE_19__ {scalar_t__ (* Alloc ) (TYPE_2__*,int) ;} ;
typedef int SRes ;
typedef TYPE_2__ ISzAlloc ;
typedef int CLzmaProb ;
typedef TYPE_3__ CLzmaEnc ;
typedef int Bool ;


 int LZMA_MATCH_LEN_MAX ;
 int LzmaEnc_FreeLits (TYPE_3__*,TYPE_2__*) ;
 int MatchFinderMt_Create (TYPE_7__*,scalar_t__,scalar_t__,int ,int ,TYPE_2__*) ;
 int MatchFinderMt_CreateVTable (TYPE_7__*,int *) ;
 int MatchFinder_Create (TYPE_7__*,scalar_t__,scalar_t__,int ,int ,TYPE_2__*) ;
 int MatchFinder_CreateVTable (TYPE_7__*,int *) ;
 int RINOK (int ) ;
 int RangeEnc_Alloc (int *,TYPE_2__*) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ kBigHashDicLimit ;
 scalar_t__ kNumOpts ;
 scalar_t__ stub1 (TYPE_2__*,int) ;
 scalar_t__ stub2 (TYPE_2__*,int) ;

__attribute__((used)) static SRes LzmaEnc_Alloc(CLzmaEnc *p, UInt32 keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  UInt32 beforeSize = kNumOpts;
  Bool btMode;
  if (!RangeEnc_Alloc(&p->rc, alloc))
    return SZ_ERROR_MEM;
  btMode = (p->matchFinderBase.btMode != 0);

  p->mtMode = (p->multiThread && !p->fastMode && btMode);


  {
    unsigned lclp = p->lc + p->lp;
    if (p->litProbs == 0 || p->saveState.litProbs == 0 || p->lclp != lclp)
    {
      LzmaEnc_FreeLits(p, alloc);
      p->litProbs = (CLzmaProb *)alloc->Alloc(alloc, (0x300 << lclp) * sizeof(CLzmaProb));
      p->saveState.litProbs = (CLzmaProb *)alloc->Alloc(alloc, (0x300 << lclp) * sizeof(CLzmaProb));
      if (p->litProbs == 0 || p->saveState.litProbs == 0)
      {
        LzmaEnc_FreeLits(p, alloc);
        return SZ_ERROR_MEM;
      }
      p->lclp = lclp;
    }
  }

  p->matchFinderBase.bigHash = (p->dictSize > kBigHashDicLimit);

  if (beforeSize + p->dictSize < keepWindowSize)
    beforeSize = keepWindowSize - p->dictSize;


  if (p->mtMode)
  {
    RINOK(MatchFinderMt_Create(&p->matchFinderMt, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig));
    p->matchFinderObj = &p->matchFinderMt;
    MatchFinderMt_CreateVTable(&p->matchFinderMt, &p->matchFinder);
  }
  else

  {
    if (!MatchFinder_Create(&p->matchFinderBase, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig))
      return SZ_ERROR_MEM;
    p->matchFinderObj = &p->matchFinderBase;
    MatchFinder_CreateVTable(&p->matchFinderBase, &p->matchFinder);
  }
  return SZ_OK;
}
