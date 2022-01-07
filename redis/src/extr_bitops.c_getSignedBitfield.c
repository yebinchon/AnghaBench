
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;


 int getUnsignedBitfield (unsigned char*,int,int) ;

int64_t getSignedBitfield(unsigned char *p, uint64_t offset, uint64_t bits) {
    int64_t value;
    union {uint64_t u; int64_t i;} conv;
    conv.u = getUnsignedBitfield(p,offset,bits);
    value = conv.i;




    if (value & ((uint64_t)1 << (bits-1)))
        value |= ((uint64_t)-1) << bits;
    return value;
}
