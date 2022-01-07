
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HLL_REGISTERS ;
 scalar_t__ HLL_SPARSE_IS_XZERO (int *) ;
 scalar_t__ HLL_SPARSE_IS_ZERO (int *) ;
 int HLL_SPARSE_VAL_LEN (int *) ;
 int HLL_SPARSE_VAL_VALUE (int *) ;
 int HLL_SPARSE_XZERO_LEN (int *) ;
 int HLL_SPARSE_ZERO_LEN (int *) ;

void hllSparseRegHisto(uint8_t *sparse, int sparselen, int *invalid, int* reghisto) {
    int idx = 0, runlen, regval;
    uint8_t *end = sparse+sparselen, *p = sparse;

    while(p < end) {
        if (HLL_SPARSE_IS_ZERO(p)) {
            runlen = HLL_SPARSE_ZERO_LEN(p);
            idx += runlen;
            reghisto[0] += runlen;
            p++;
        } else if (HLL_SPARSE_IS_XZERO(p)) {
            runlen = HLL_SPARSE_XZERO_LEN(p);
            idx += runlen;
            reghisto[0] += runlen;
            p += 2;
        } else {
            runlen = HLL_SPARSE_VAL_LEN(p);
            regval = HLL_SPARSE_VAL_VALUE(p);
            idx += runlen;
            reghisto[regval] += runlen;
            p++;
        }
    }
    if (idx != HLL_REGISTERS && invalid) *invalid = 1;
}
