
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUFv05_DEltX4 ;
typedef int BYTE ;
typedef int BITv05_DStream_t ;


 scalar_t__ BITv05_DStream_unfinished ;
 scalar_t__ BITv05_reloadDStream (int *) ;
 int HUFv05_DECODE_SYMBOLX4_0 (int *,int *) ;
 int HUFv05_DECODE_SYMBOLX4_1 (int *,int *) ;
 int HUFv05_DECODE_SYMBOLX4_2 (int *,int *) ;
 int HUFv05_decodeLastSymbolX4 (int *,int *,int const* const,int const) ;

__attribute__((used)) static inline size_t HUFv05_decodeStreamX4(BYTE* p, BITv05_DStream_t* bitDPtr, BYTE* const pEnd, const HUFv05_DEltX4* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;


    while ((BITv05_reloadDStream(bitDPtr) == BITv05_DStream_unfinished) && (p < pEnd-7)) {
        HUFv05_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUFv05_DECODE_SYMBOLX4_1(p, bitDPtr);
        HUFv05_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUFv05_DECODE_SYMBOLX4_0(p, bitDPtr);
    }


    while ((BITv05_reloadDStream(bitDPtr) == BITv05_DStream_unfinished) && (p <= pEnd-2))
        HUFv05_DECODE_SYMBOLX4_0(p, bitDPtr);

    while (p <= pEnd-2)
        HUFv05_DECODE_SYMBOLX4_0(p, bitDPtr);

    if (p < pEnd)
        p += HUFv05_decodeLastSymbolX4(p, bitDPtr, dt, dtLog);

    return p-pStart;
}
