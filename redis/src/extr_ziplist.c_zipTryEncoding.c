
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long INT16_MAX ;
 long long INT16_MIN ;
 long long INT24_MAX ;
 long long INT24_MIN ;
 long long INT32_MAX ;
 long long INT32_MIN ;
 long long INT8_MAX ;
 long long INT8_MIN ;
 unsigned char ZIP_INT_16B ;
 unsigned char ZIP_INT_24B ;
 unsigned char ZIP_INT_32B ;
 unsigned char ZIP_INT_64B ;
 unsigned char ZIP_INT_8B ;
 long long ZIP_INT_IMM_MIN ;
 scalar_t__ string2ll (char*,unsigned int,long long*) ;

int zipTryEncoding(unsigned char *entry, unsigned int entrylen, long long *v, unsigned char *encoding) {
    long long value;

    if (entrylen >= 32 || entrylen == 0) return 0;
    if (string2ll((char*)entry,entrylen,&value)) {


        if (value >= 0 && value <= 12) {
            *encoding = ZIP_INT_IMM_MIN+value;
        } else if (value >= INT8_MIN && value <= INT8_MAX) {
            *encoding = ZIP_INT_8B;
        } else if (value >= INT16_MIN && value <= INT16_MAX) {
            *encoding = ZIP_INT_16B;
        } else if (value >= INT24_MIN && value <= INT24_MAX) {
            *encoding = ZIP_INT_24B;
        } else if (value >= INT32_MIN && value <= INT32_MAX) {
            *encoding = ZIP_INT_32B;
        } else {
            *encoding = ZIP_INT_64B;
        }
        *v = value;
        return 1;
    }
    return 0;
}
