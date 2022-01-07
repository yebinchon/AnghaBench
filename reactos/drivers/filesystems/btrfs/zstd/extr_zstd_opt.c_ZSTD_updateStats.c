
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* litFreq; size_t litSum; int matchLengthSum; int * matchLengthFreq; int offCodeSum; int * offCodeFreq; int litLengthSum; int * litLengthFreq; } ;
typedef TYPE_1__ optState_t ;
typedef size_t U32 ;
typedef size_t BYTE ;


 size_t MINMATCH ;
 size_t const MaxOff ;
 size_t ZSTD_LITFREQ_ADD ;
 size_t ZSTD_LLcode (size_t) ;
 size_t ZSTD_MLcode (size_t const) ;
 size_t ZSTD_highbit32 (size_t) ;
 int assert (int) ;

__attribute__((used)) static void ZSTD_updateStats(optState_t* const optPtr,
                             U32 litLength, const BYTE* literals,
                             U32 offsetCode, U32 matchLength)
{

    { U32 u;
        for (u=0; u < litLength; u++)
            optPtr->litFreq[literals[u]] += ZSTD_LITFREQ_ADD;
        optPtr->litSum += litLength*ZSTD_LITFREQ_ADD;
    }


    { U32 const llCode = ZSTD_LLcode(litLength);
        optPtr->litLengthFreq[llCode]++;
        optPtr->litLengthSum++;
    }


    { U32 const offCode = ZSTD_highbit32(offsetCode+1);
        assert(offCode <= MaxOff);
        optPtr->offCodeFreq[offCode]++;
        optPtr->offCodeSum++;
    }


    { U32 const mlBase = matchLength - MINMATCH;
        U32 const mlCode = ZSTD_MLcode(mlBase);
        optPtr->matchLengthFreq[mlCode]++;
        optPtr->matchLengthSum++;
    }
}
