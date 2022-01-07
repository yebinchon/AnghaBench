
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char* sds ;
struct TYPE_2__ {size_t alloc; } ;


 TYPE_1__* SDS_HDR (int,unsigned char*) ;





 unsigned char SDS_TYPE_MASK ;

__attribute__((used)) static inline void sdssetalloc(sds s, size_t newlen) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case 130:

            break;
        case 128:
            SDS_HDR(8,s)->alloc = newlen;
            break;
        case 132:
            SDS_HDR(16,s)->alloc = newlen;
            break;
        case 131:
            SDS_HDR(32,s)->alloc = newlen;
            break;
        case 129:
            SDS_HDR(64,s)->alloc = newlen;
            break;
    }
}
