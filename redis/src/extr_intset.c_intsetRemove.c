
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int encoding; int length; } ;
typedef TYPE_1__ intset ;
typedef int int64_t ;


 scalar_t__ _intsetValueEncoding (int ) ;
 scalar_t__ intrev32ifbe (int) ;
 int intsetMoveTail (TYPE_1__*,int,int) ;
 TYPE_1__* intsetResize (TYPE_1__*,int) ;
 scalar_t__ intsetSearch (TYPE_1__*,int ,int*) ;

intset *intsetRemove(intset *is, int64_t value, int *success) {
    uint8_t valenc = _intsetValueEncoding(value);
    uint32_t pos;
    if (success) *success = 0;

    if (valenc <= intrev32ifbe(is->encoding) && intsetSearch(is,value,&pos)) {
        uint32_t len = intrev32ifbe(is->length);


        if (success) *success = 1;


        if (pos < (len-1)) intsetMoveTail(is,pos+1,pos);
        is = intsetResize(is,len-1);
        is->length = intrev32ifbe(len-1);
    }
    return is;
}
