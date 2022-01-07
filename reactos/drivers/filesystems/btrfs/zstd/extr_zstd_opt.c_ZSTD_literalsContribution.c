
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optState_t ;
typedef int U32 ;
typedef int BYTE ;


 int ZSTD_litLengthContribution (int const,int const* const,int) ;
 int ZSTD_rawLiteralsCost (int const* const,int const,int const* const,int) ;

__attribute__((used)) static int ZSTD_literalsContribution(const BYTE* const literals, U32 const litLength,
                                     const optState_t* const optPtr,
                                     int optLevel)
{
    int const contribution = ZSTD_rawLiteralsCost(literals, litLength, optPtr, optLevel)
                           + ZSTD_litLengthContribution(litLength, optPtr, optLevel);
    return contribution;
}
