
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct hllhdr {int encoding; int magic; } ;
typedef scalar_t__ sds ;
struct TYPE_4__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;


 int HLL_HDR_SIZE ;
 int HLL_REGISTERS ;
 int HLL_SPARSE ;
 int HLL_SPARSE_XZERO_MAX_LEN ;
 int HLL_SPARSE_XZERO_SET (int *,int) ;
 int OBJ_STRING ;
 TYPE_1__* createObject (int ,scalar_t__) ;
 int memcpy (int ,char*,int) ;
 scalar_t__ sdsnewlen (int *,int) ;
 int serverAssert (int) ;

robj *createHLLObject(void) {
    robj *o;
    struct hllhdr *hdr;
    sds s;
    uint8_t *p;
    int sparselen = HLL_HDR_SIZE +
                    (((HLL_REGISTERS+(HLL_SPARSE_XZERO_MAX_LEN-1)) /
                     HLL_SPARSE_XZERO_MAX_LEN)*2);
    int aux;



    aux = HLL_REGISTERS;
    s = sdsnewlen(((void*)0),sparselen);
    p = (uint8_t*)s + HLL_HDR_SIZE;
    while(aux) {
        int xzero = HLL_SPARSE_XZERO_MAX_LEN;
        if (xzero > aux) xzero = aux;
        HLL_SPARSE_XZERO_SET(p,xzero);
        p += 2;
        aux -= xzero;
    }
    serverAssert((p-(uint8_t*)s) == sparselen);


    o = createObject(OBJ_STRING,s);
    hdr = o->ptr;
    memcpy(hdr->magic,"HYLL",4);
    hdr->encoding = HLL_SPARSE;
    return o;
}
