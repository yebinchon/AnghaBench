
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_UINT32 ;
typedef double OPJ_FLOAT32 ;


 int memset (double*,int ,size_t) ;
 int opj_lupSolve (double*,double*,double*,size_t*,size_t,double*) ;

__attribute__((used)) static void opj_lupInvert(OPJ_FLOAT32 * pSrcMatrix,
                          OPJ_FLOAT32 * pDestMatrix,
                          OPJ_UINT32 nb_compo,
                          OPJ_UINT32 * pPermutations,
                          OPJ_FLOAT32 * p_src_temp,
                          OPJ_FLOAT32 * p_dest_temp,
                          OPJ_FLOAT32 * p_swap_area)
{
    OPJ_UINT32 j, i;
    OPJ_FLOAT32 * lCurrentPtr;
    OPJ_FLOAT32 * lLineMatrix = pDestMatrix;
    OPJ_UINT32 lSwapSize = nb_compo * (OPJ_UINT32)sizeof(OPJ_FLOAT32);

    for (j = 0; j < nb_compo; ++j) {
        lCurrentPtr = lLineMatrix++;
        memset(p_src_temp, 0, lSwapSize);
        p_src_temp[j] = 1.0;
        opj_lupSolve(p_dest_temp, pSrcMatrix, p_src_temp, pPermutations, nb_compo,
                     p_swap_area);

        for (i = 0; i < nb_compo; ++i) {
            *(lCurrentPtr) = p_dest_temp[i];
            lCurrentPtr += nb_compo;
        }
    }
}
