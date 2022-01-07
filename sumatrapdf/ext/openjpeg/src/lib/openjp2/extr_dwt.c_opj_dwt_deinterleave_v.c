
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_SIZE_T ;
typedef int OPJ_INT32 ;



__attribute__((used)) static void opj_dwt_deinterleave_v(OPJ_INT32 *a, OPJ_INT32 *b, OPJ_INT32 dn,
                                   OPJ_INT32 sn, OPJ_INT32 x, OPJ_INT32 cas)
{
    OPJ_INT32 i = sn;
    OPJ_INT32 * l_dest = b;
    OPJ_INT32 * l_src = a + cas;

    while (i--) {
        *l_dest = *l_src;
        l_dest += x;
        l_src += 2;
    }

    l_dest = b + (OPJ_SIZE_T)sn * (OPJ_SIZE_T)x;
    l_src = a + 1 - cas;

    i = dn;
    while (i--) {
        *l_dest = *l_src;
        l_dest += x;
        l_src += 2;
    }
}
