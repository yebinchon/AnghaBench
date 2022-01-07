
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int litLengthSum; int* litFreq; int* litLengthFreq; int matchLengthSum; int* matchLengthFreq; int offCodeSum; int* offCodeFreq; void* litSum; TYPE_3__* symbolCosts; void* priceType; } ;
typedef TYPE_4__ optState_t ;
typedef scalar_t__ U32 ;
struct TYPE_13__ {int symbolTT; } ;
struct TYPE_10__ {int offcodeCTable; int matchlengthCTable; int litlengthCTable; } ;
struct TYPE_9__ {scalar_t__ repeatMode; int CTable; } ;
struct TYPE_11__ {TYPE_2__ fse; TYPE_1__ huf; } ;
typedef TYPE_5__ FSE_CState_t ;
typedef int BYTE ;


 scalar_t__ FSE_getMaxNbBits (int ,unsigned int) ;
 int FSE_initCState (TYPE_5__*,int ) ;
 int HIST_count_simple (int*,unsigned int*,int const* const,size_t const) ;
 scalar_t__ HUF_getNbBits (int ,unsigned int) ;
 scalar_t__ HUF_repeat_valid ;
 unsigned int MaxLL ;
 unsigned int MaxLit ;
 unsigned int MaxML ;
 unsigned int MaxOff ;
 void* ZSTD_downscaleStat (int*,unsigned int,int) ;
 int ZSTD_setBasePrices (TYPE_4__* const,int) ;
 int assert (int) ;
 void* zop_dynamic ;
 void* zop_predef ;

__attribute__((used)) static void ZSTD_rescaleFreqs(optState_t* const optPtr,
                              const BYTE* const src, size_t const srcSize,
                              int optLevel)
{
    optPtr->priceType = zop_dynamic;

    if (optPtr->litLengthSum == 0) {
        if (srcSize <= 1024)
            optPtr->priceType = zop_predef;

        assert(optPtr->symbolCosts != ((void*)0));
        if (optPtr->symbolCosts->huf.repeatMode == HUF_repeat_valid) {
            optPtr->priceType = zop_dynamic;

            assert(optPtr->litFreq != ((void*)0));
            optPtr->litSum = 0;
            { unsigned lit;
                for (lit=0; lit<=MaxLit; lit++) {
                    U32 const scaleLog = 11;
                    U32 const bitCost = HUF_getNbBits(optPtr->symbolCosts->huf.CTable, lit);
                    assert(bitCost <= scaleLog);
                    optPtr->litFreq[lit] = bitCost ? 1 << (scaleLog-bitCost) : 1 ;
                    optPtr->litSum += optPtr->litFreq[lit];
            } }

            { unsigned ll;
                FSE_CState_t llstate;
                FSE_initCState(&llstate, optPtr->symbolCosts->fse.litlengthCTable);
                optPtr->litLengthSum = 0;
                for (ll=0; ll<=MaxLL; ll++) {
                    U32 const scaleLog = 10;
                    U32 const bitCost = FSE_getMaxNbBits(llstate.symbolTT, ll);
                    assert(bitCost < scaleLog);
                    optPtr->litLengthFreq[ll] = bitCost ? 1 << (scaleLog-bitCost) : 1 ;
                    optPtr->litLengthSum += optPtr->litLengthFreq[ll];
            } }

            { unsigned ml;
                FSE_CState_t mlstate;
                FSE_initCState(&mlstate, optPtr->symbolCosts->fse.matchlengthCTable);
                optPtr->matchLengthSum = 0;
                for (ml=0; ml<=MaxML; ml++) {
                    U32 const scaleLog = 10;
                    U32 const bitCost = FSE_getMaxNbBits(mlstate.symbolTT, ml);
                    assert(bitCost < scaleLog);
                    optPtr->matchLengthFreq[ml] = bitCost ? 1 << (scaleLog-bitCost) : 1 ;
                    optPtr->matchLengthSum += optPtr->matchLengthFreq[ml];
            } }

            { unsigned of;
                FSE_CState_t ofstate;
                FSE_initCState(&ofstate, optPtr->symbolCosts->fse.offcodeCTable);
                optPtr->offCodeSum = 0;
                for (of=0; of<=MaxOff; of++) {
                    U32 const scaleLog = 10;
                    U32 const bitCost = FSE_getMaxNbBits(ofstate.symbolTT, of);
                    assert(bitCost < scaleLog);
                    optPtr->offCodeFreq[of] = bitCost ? 1 << (scaleLog-bitCost) : 1 ;
                    optPtr->offCodeSum += optPtr->offCodeFreq[of];
            } }

        } else {

            assert(optPtr->litFreq != ((void*)0));
            { unsigned lit = MaxLit;
                HIST_count_simple(optPtr->litFreq, &lit, src, srcSize);
            }
            optPtr->litSum = ZSTD_downscaleStat(optPtr->litFreq, MaxLit, 1);

            { unsigned ll;
                for (ll=0; ll<=MaxLL; ll++)
                    optPtr->litLengthFreq[ll] = 1;
            }
            optPtr->litLengthSum = MaxLL+1;

            { unsigned ml;
                for (ml=0; ml<=MaxML; ml++)
                    optPtr->matchLengthFreq[ml] = 1;
            }
            optPtr->matchLengthSum = MaxML+1;

            { unsigned of;
                for (of=0; of<=MaxOff; of++)
                    optPtr->offCodeFreq[of] = 1;
            }
            optPtr->offCodeSum = MaxOff+1;

        }

    } else {

        optPtr->litSum = ZSTD_downscaleStat(optPtr->litFreq, MaxLit, 1);
        optPtr->litLengthSum = ZSTD_downscaleStat(optPtr->litLengthFreq, MaxLL, 0);
        optPtr->matchLengthSum = ZSTD_downscaleStat(optPtr->matchLengthFreq, MaxML, 0);
        optPtr->offCodeSum = ZSTD_downscaleStat(optPtr->offCodeFreq, MaxOff, 0);
    }

    ZSTD_setBasePrices(optPtr, optLevel);
}
