
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int v64 ;
typedef int v32 ;
typedef int v16 ;
typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ contents; } ;
typedef TYPE_1__ intset ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 scalar_t__ INTSET_ENC_INT32 ;
 scalar_t__ INTSET_ENC_INT64 ;
 int memcpy (int *,int *,int) ;
 int memrev16ifbe (int *) ;
 int memrev32ifbe (int *) ;
 int memrev64ifbe (int *) ;

__attribute__((used)) static int64_t _intsetGetEncoded(intset *is, int pos, uint8_t enc) {
    int64_t v64;
    int32_t v32;
    int16_t v16;

    if (enc == INTSET_ENC_INT64) {
        memcpy(&v64,((int64_t*)is->contents)+pos,sizeof(v64));
        memrev64ifbe(&v64);
        return v64;
    } else if (enc == INTSET_ENC_INT32) {
        memcpy(&v32,((int32_t*)is->contents)+pos,sizeof(v32));
        memrev32ifbe(&v32);
        return v32;
    } else {
        memcpy(&v16,((int16_t*)is->contents)+pos,sizeof(v16));
        memrev16ifbe(&v16);
        return v16;
    }
}
