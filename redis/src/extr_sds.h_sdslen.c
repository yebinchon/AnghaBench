
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char* sds ;
struct TYPE_2__ {size_t len; } ;


 TYPE_1__* SDS_HDR (int,unsigned char* const) ;



 size_t SDS_TYPE_5_LEN (unsigned char) ;


 unsigned char SDS_TYPE_MASK ;

__attribute__((used)) static inline size_t sdslen(const sds s) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case 130:
            return SDS_TYPE_5_LEN(flags);
        case 128:
            return SDS_HDR(8,s)->len;
        case 132:
            return SDS_HDR(16,s)->len;
        case 131:
            return SDS_HDR(32,s)->len;
        case 129:
            return SDS_HDR(64,s)->len;
    }
    return 0;
}
