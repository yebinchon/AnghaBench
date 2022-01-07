
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_INT32 ;



__attribute__((used)) static void opj_dwt_deinterleave_h(OPJ_INT32 *a, OPJ_INT32 *b, OPJ_INT32 dn,
                                   OPJ_INT32 sn, OPJ_INT32 cas)
{
    OPJ_INT32 i;
    OPJ_INT32 * l_dest = b;
    OPJ_INT32 * l_src = a + cas;

    for (i = 0; i < sn; ++i) {
        *l_dest++ = *l_src;
        l_src += 2;
    }

    l_dest = b + sn;
    l_src = a + 1 - cas;

    for (i = 0; i < dn; ++i) {
        *l_dest++ = *l_src;
        l_src += 2;
    }
}
