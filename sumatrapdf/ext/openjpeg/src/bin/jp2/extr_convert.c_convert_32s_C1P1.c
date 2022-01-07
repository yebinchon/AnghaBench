
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_SIZE_T ;
typedef int OPJ_INT32 ;


 int memcpy (int * const,int const*,int) ;

__attribute__((used)) static void convert_32s_C1P1(const OPJ_INT32* pSrc, OPJ_INT32* const* pDst,
                             OPJ_SIZE_T length)
{
    memcpy(pDst[0], pSrc, length * sizeof(OPJ_INT32));
}
