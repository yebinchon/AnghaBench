
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef size_t OPJ_INT32 ;


 int assert (int) ;
 int memcpy (size_t*,size_t*,int) ;

__attribute__((used)) static void opj_idwt53_h_cas1(OPJ_INT32* tmp,
                               const OPJ_INT32 sn,
                               const OPJ_INT32 len,
                               OPJ_INT32* tiledp)
{
    OPJ_INT32 i, j;
    const OPJ_INT32* in_even = &tiledp[sn];
    const OPJ_INT32* in_odd = &tiledp[0];
    OPJ_INT32 s1, s2, dc, dn;

    assert(len > 2);





    s1 = in_even[1];
    dc = in_odd[0] - ((in_even[0] + s1 + 2) >> 2);
    tmp[0] = in_even[0] + dc;

    for (i = 1, j = 1; i < (len - 2 - !(len & 1)); i += 2, j++) {

        s2 = in_even[j + 1];

        dn = in_odd[j] - ((s1 + s2 + 2) >> 2);
        tmp[i ] = dc;
        tmp[i + 1] = s1 + ((dn + dc) >> 1);

        dc = dn;
        s1 = s2;
    }

    tmp[i] = dc;

    if (!(len & 1)) {
        dn = in_odd[len / 2 - 1] - ((s1 + 1) >> 1);
        tmp[len - 2] = s1 + ((dn + dc) >> 1);
        tmp[len - 1] = dn;
    } else {
        tmp[len - 1] = s1 + dc;
    }

    memcpy(tiledp, tmp, (OPJ_UINT32)len * sizeof(OPJ_INT32));
}
