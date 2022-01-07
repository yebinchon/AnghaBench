
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hllhdr {int encoding; int registers; } ;
struct TYPE_4__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;




 int hllDenseAdd (int ,unsigned char*,size_t) ;
 int hllSparseAdd (TYPE_1__*,unsigned char*,size_t) ;

int hllAdd(robj *o, unsigned char *ele, size_t elesize) {
    struct hllhdr *hdr = o->ptr;
    switch(hdr->encoding) {
    case 129: return hllDenseAdd(hdr->registers,ele,elesize);
    case 128: return hllSparseAdd(o,ele,elesize);
    default: return -1;
    }
}
