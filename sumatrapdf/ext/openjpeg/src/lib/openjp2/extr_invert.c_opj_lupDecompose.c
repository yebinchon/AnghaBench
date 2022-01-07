
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef double OPJ_FLOAT32 ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int memcpy (double*,double*,int) ;

__attribute__((used)) static OPJ_BOOL opj_lupDecompose(OPJ_FLOAT32 * matrix,
                                 OPJ_UINT32 * permutations,
                                 OPJ_FLOAT32 * p_swap_area,
                                 OPJ_UINT32 nb_compo)
{
    OPJ_UINT32 * tmpPermutations = permutations;
    OPJ_UINT32 * dstPermutations;
    OPJ_UINT32 k2 = 0, t;
    OPJ_FLOAT32 temp;
    OPJ_UINT32 i, j, k;
    OPJ_FLOAT32 p;
    OPJ_UINT32 lLastColum = nb_compo - 1;
    OPJ_UINT32 lSwapSize = nb_compo * (OPJ_UINT32)sizeof(OPJ_FLOAT32);
    OPJ_FLOAT32 * lTmpMatrix = matrix;
    OPJ_FLOAT32 * lColumnMatrix, * lDestMatrix;
    OPJ_UINT32 offset = 1;
    OPJ_UINT32 lStride = nb_compo - 1;


    for (i = 0; i < nb_compo; ++i) {
        *tmpPermutations++ = i;
    }

    tmpPermutations = permutations;
    for (k = 0; k < lLastColum; ++k) {
        p = 0.0;


        lColumnMatrix = lTmpMatrix + k;


        for (i = k; i < nb_compo; ++i) {
            temp = ((*lColumnMatrix > 0) ? *lColumnMatrix : -(*lColumnMatrix));
            if (temp > p) {
                p = temp;
                k2 = i;
            }

            lColumnMatrix += nb_compo;
        }


        if (p == 0.0) {
            return OPJ_FALSE;
        }


        if (k2 != k) {


            dstPermutations = tmpPermutations + k2 - k;

            t = *tmpPermutations;
            *tmpPermutations = *dstPermutations;
            *dstPermutations = t;


            lColumnMatrix = lTmpMatrix + (k2 - k) * nb_compo;
            memcpy(p_swap_area, lColumnMatrix, lSwapSize);
            memcpy(lColumnMatrix, lTmpMatrix, lSwapSize);
            memcpy(lTmpMatrix, p_swap_area, lSwapSize);
        }


        lDestMatrix = lTmpMatrix + k;
        lColumnMatrix = lDestMatrix + nb_compo;

        temp = *(lDestMatrix++);


        for (i = offset; i < nb_compo; ++i) {





            p = *lColumnMatrix / temp;
            *(lColumnMatrix++) = p;

            for (j = offset; j < nb_compo; ++j) {

                *(lColumnMatrix++) -= p * (*(lDestMatrix++));
            }

            lDestMatrix -= lStride;

            lColumnMatrix += k;
        }


        ++offset;

        --lStride;

        lTmpMatrix += nb_compo;

        ++tmpPermutations;
    }
    return OPJ_TRUE;
}
