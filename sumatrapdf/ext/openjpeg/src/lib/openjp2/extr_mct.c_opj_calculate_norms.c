
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_UINT32 ;
typedef scalar_t__ OPJ_FLOAT64 ;
typedef int OPJ_FLOAT32 ;


 scalar_t__ sqrt (scalar_t__) ;

void opj_calculate_norms(OPJ_FLOAT64 * pNorms,
                         OPJ_UINT32 pNbComps,
                         OPJ_FLOAT32 * pMatrix)
{
    OPJ_UINT32 i, j, lIndex;
    OPJ_FLOAT32 lCurrentValue;
    OPJ_FLOAT64 * lNorms = (OPJ_FLOAT64 *) pNorms;
    OPJ_FLOAT32 * lMatrix = (OPJ_FLOAT32 *) pMatrix;

    for (i = 0; i < pNbComps; ++i) {
        lNorms[i] = 0;
        lIndex = i;

        for (j = 0; j < pNbComps; ++j) {
            lCurrentValue = lMatrix[lIndex];
            lIndex += pNbComps;
            lNorms[i] += lCurrentValue * lCurrentValue;
        }
        lNorms[i] = sqrt(lNorms[i]);
    }
}
