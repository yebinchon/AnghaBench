
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_SIZE_T ;
typedef size_t OPJ_INT32 ;


 int LOAD (size_t const*) ;
 size_t PARALLEL_COLS_53 ;
 int STOREU (size_t*,int ) ;
 size_t VREG_INT_COUNT ;

__attribute__((used)) static
void opj_idwt53_v_final_memcpy(OPJ_INT32* tiledp_col,
                               const OPJ_INT32* tmp,
                               OPJ_INT32 len,
                               OPJ_SIZE_T stride)
{
    OPJ_INT32 i;
    for (i = 0; i < len; ++i) {





        STOREU(&tiledp_col[(OPJ_SIZE_T)i * stride + 0],
               LOAD(&tmp[PARALLEL_COLS_53 * i + 0]));
        STOREU(&tiledp_col[(OPJ_SIZE_T)i * stride + VREG_INT_COUNT],
               LOAD(&tmp[PARALLEL_COLS_53 * i + VREG_INT_COUNT]));
    }
}
