
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUFv07_DEltX4 ;
typedef int BYTE ;
typedef int BITv07_DStream_t ;


 scalar_t__ BITv07_DStream_unfinished ;
 scalar_t__ BITv07_reloadDStream (int *) ;
 int HUFv07_DECODE_SYMBOLX4_0 (int *,int *) ;
 int HUFv07_DECODE_SYMBOLX4_1 (int *,int *) ;
 int HUFv07_DECODE_SYMBOLX4_2 (int *,int *) ;
 int HUFv07_decodeLastSymbolX4 (int *,int *,int const* const,int const) ;

__attribute__((used)) static inline size_t HUFv07_decodeStreamX4(BYTE* p, BITv07_DStream_t* bitDPtr, BYTE* const pEnd, const HUFv07_DEltX4* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;


    while ((BITv07_reloadDStream(bitDPtr) == BITv07_DStream_unfinished) && (p < pEnd-7)) {
        HUFv07_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUFv07_DECODE_SYMBOLX4_1(p, bitDPtr);
        HUFv07_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUFv07_DECODE_SYMBOLX4_0(p, bitDPtr);
    }


    while ((BITv07_reloadDStream(bitDPtr) == BITv07_DStream_unfinished) && (p <= pEnd-2))
        HUFv07_DECODE_SYMBOLX4_0(p, bitDPtr);

    while (p <= pEnd-2)
        HUFv07_DECODE_SYMBOLX4_0(p, bitDPtr);

    if (p < pEnd)
        p += HUFv07_decodeLastSymbolX4(p, bitDPtr, dt, dtLog);

    return p-pStart;
}
