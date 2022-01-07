
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* mem; int sn; int dn; scalar_t__ cas; } ;
typedef TYPE_1__ opj_dwt_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_INT32 ;


 int memcpy (int*,int*,int) ;
 int opj_dwt_decode_1 (TYPE_1__ const*) ;
 int opj_dwt_interleave_h (TYPE_1__ const*,int*) ;
 int opj_idwt53_h_cas0 (int*,int const,int const,int*) ;
 int opj_idwt53_h_cas1 (int*,int const,int const,int*) ;

__attribute__((used)) static void opj_idwt53_h(const opj_dwt_t *dwt,
                         OPJ_INT32* tiledp)
{






    const OPJ_INT32 sn = dwt->sn;
    const OPJ_INT32 len = sn + dwt->dn;
    if (dwt->cas == 0) {
        if (len > 1) {
            opj_idwt53_h_cas0(dwt->mem, sn, len, tiledp);
        } else {

        }
    } else {
        if (len == 1) {
            tiledp[0] /= 2;
        } else if (len == 2) {
            OPJ_INT32* out = dwt->mem;
            const OPJ_INT32* in_even = &tiledp[sn];
            const OPJ_INT32* in_odd = &tiledp[0];
            out[1] = in_odd[0] - ((in_even[0] + 1) >> 1);
            out[0] = in_even[0] + out[1];
            memcpy(tiledp, dwt->mem, (OPJ_UINT32)len * sizeof(OPJ_INT32));
        } else if (len > 2) {
            opj_idwt53_h_cas1(dwt->mem, sn, len, tiledp);
        }
    }

}
