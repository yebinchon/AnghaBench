
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char* sds ;
struct TYPE_2__ {size_t alloc; size_t len; } ;


 int SDS_HDR_VAR (int,unsigned char* const) ;





 unsigned char SDS_TYPE_MASK ;
 TYPE_1__* sh ;

__attribute__((used)) static inline size_t sdsavail(const sds s) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case 130: {
            return 0;
        }
        case 128: {
            SDS_HDR_VAR(8,s);
            return sh->alloc - sh->len;
        }
        case 132: {
            SDS_HDR_VAR(16,s);
            return sh->alloc - sh->len;
        }
        case 131: {
            SDS_HDR_VAR(32,s);
            return sh->alloc - sh->len;
        }
        case 129: {
            SDS_HDR_VAR(64,s);
            return sh->alloc - sh->len;
        }
    }
    return 0;
}
