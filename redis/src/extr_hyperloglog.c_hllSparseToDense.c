
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct hllhdr {scalar_t__ encoding; int registers; } ;
typedef scalar_t__ sds ;
struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ HLL_DENSE ;
 int HLL_DENSE_SET_REGISTER (int ,int,int) ;
 int HLL_DENSE_SIZE ;
 int HLL_HDR_SIZE ;
 int HLL_REGISTERS ;
 scalar_t__ HLL_SPARSE_IS_XZERO (int *) ;
 scalar_t__ HLL_SPARSE_IS_ZERO (int *) ;
 int HLL_SPARSE_VAL_LEN (int *) ;
 int HLL_SPARSE_VAL_VALUE (int *) ;
 int HLL_SPARSE_XZERO_LEN (int *) ;
 int HLL_SPARSE_ZERO_LEN (int *) ;
 int sdsfree (scalar_t__) ;
 int sdslen (scalar_t__) ;
 scalar_t__ sdsnewlen (int *,int ) ;

int hllSparseToDense(robj *o) {
    sds sparse = o->ptr, dense;
    struct hllhdr *hdr, *oldhdr = (struct hllhdr*)sparse;
    int idx = 0, runlen, regval;
    uint8_t *p = (uint8_t*)sparse, *end = p+sdslen(sparse);


    hdr = (struct hllhdr*) sparse;
    if (hdr->encoding == HLL_DENSE) return C_OK;




    dense = sdsnewlen(((void*)0),HLL_DENSE_SIZE);
    hdr = (struct hllhdr*) dense;
    *hdr = *oldhdr;
    hdr->encoding = HLL_DENSE;



    p += HLL_HDR_SIZE;
    while(p < end) {
        if (HLL_SPARSE_IS_ZERO(p)) {
            runlen = HLL_SPARSE_ZERO_LEN(p);
            idx += runlen;
            p++;
        } else if (HLL_SPARSE_IS_XZERO(p)) {
            runlen = HLL_SPARSE_XZERO_LEN(p);
            idx += runlen;
            p += 2;
        } else {
            runlen = HLL_SPARSE_VAL_LEN(p);
            regval = HLL_SPARSE_VAL_VALUE(p);
            if ((runlen + idx) > HLL_REGISTERS) break;
            while(runlen--) {
                HLL_DENSE_SET_REGISTER(hdr->registers,idx,regval);
                idx++;
            }
            p++;
        }
    }



    if (idx != HLL_REGISTERS) {
        sdsfree(dense);
        return C_ERR;
    }


    sdsfree(o->ptr);
    o->ptr = dense;
    return C_OK;
}
