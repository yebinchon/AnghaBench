
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sn; scalar_t__ dn; scalar_t__* mem; scalar_t__ cas; } ;
typedef TYPE_1__ opj_dwt_t ;
typedef scalar_t__ OPJ_SIZE_T ;
typedef scalar_t__ OPJ_INT32 ;


 scalar_t__ PARALLEL_COLS_53 ;
 int opj_dwt_decode_1 (TYPE_1__ const*) ;
 int opj_dwt_interleave_v (TYPE_1__ const*,scalar_t__*,scalar_t__) ;
 int opj_idwt3_v_cas0 (scalar_t__*,scalar_t__ const,scalar_t__ const,scalar_t__*,scalar_t__) ;
 int opj_idwt3_v_cas1 (scalar_t__*,scalar_t__ const,scalar_t__ const,scalar_t__*,scalar_t__) ;
 int opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2 (scalar_t__*,scalar_t__ const,scalar_t__ const,scalar_t__*,scalar_t__) ;
 int opj_idwt53_v_cas1_mcols_SSE2_OR_AVX2 (scalar_t__*,scalar_t__ const,scalar_t__ const,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void opj_idwt53_v(const opj_dwt_t *dwt,
                         OPJ_INT32* tiledp_col,
                         OPJ_SIZE_T stride,
                         OPJ_INT32 nb_cols)
{
    const OPJ_INT32 sn = dwt->sn;
    const OPJ_INT32 len = sn + dwt->dn;
    if (dwt->cas == 0) {



        if (len > 1 && nb_cols == PARALLEL_COLS_53) {


            opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2(dwt->mem, sn, len, tiledp_col, stride);
            return;
        }

        if (len > 1) {
            OPJ_INT32 c;
            for (c = 0; c < nb_cols; c++, tiledp_col++) {
                opj_idwt3_v_cas0(dwt->mem, sn, len, tiledp_col, stride);
            }
            return;
        }
    } else {
        if (len == 1) {
            OPJ_INT32 c;
            for (c = 0; c < nb_cols; c++, tiledp_col++) {
                tiledp_col[0] /= 2;
            }
            return;
        }

        if (len == 2) {
            OPJ_INT32 c;
            OPJ_INT32* out = dwt->mem;
            for (c = 0; c < nb_cols; c++, tiledp_col++) {
                OPJ_INT32 i;
                const OPJ_INT32* in_even = &tiledp_col[(OPJ_SIZE_T)sn * stride];
                const OPJ_INT32* in_odd = &tiledp_col[0];

                out[1] = in_odd[0] - ((in_even[0] + 1) >> 1);
                out[0] = in_even[0] + out[1];

                for (i = 0; i < len; ++i) {
                    tiledp_col[(OPJ_SIZE_T)i * stride] = out[i];
                }
            }

            return;
        }


        if (len > 2 && nb_cols == PARALLEL_COLS_53) {


            opj_idwt53_v_cas1_mcols_SSE2_OR_AVX2(dwt->mem, sn, len, tiledp_col, stride);
            return;
        }

        if (len > 2) {
            OPJ_INT32 c;
            for (c = 0; c < nb_cols; c++, tiledp_col++) {
                opj_idwt3_v_cas1(dwt->mem, sn, len, tiledp_col, stride);
            }
            return;
        }
    }

}
