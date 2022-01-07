
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_2__ {size_t tableTime; size_t const decode256Time; } ;


 TYPE_1__** algoTime ;

U32 HUFv07_selectDecoder (size_t dstSize, size_t cSrcSize)
{

    U32 const Q = (U32)(cSrcSize * 16 / dstSize);
    U32 const D256 = (U32)(dstSize >> 8);
    U32 const DTime0 = algoTime[Q][0].tableTime + (algoTime[Q][0].decode256Time * D256);
    U32 DTime1 = algoTime[Q][1].tableTime + (algoTime[Q][1].decode256Time * D256);
    DTime1 += DTime1 >> 3;

    return DTime1 < DTime0;
}
