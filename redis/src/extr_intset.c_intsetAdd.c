
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_11__ {scalar_t__ encoding; scalar_t__ length; } ;
typedef TYPE_1__ intset ;
typedef int int64_t ;


 int _intsetSet (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ _intsetValueEncoding (int ) ;
 scalar_t__ intrev32ifbe (scalar_t__) ;
 int intsetMoveTail (TYPE_1__*,scalar_t__,scalar_t__) ;
 TYPE_1__* intsetResize (TYPE_1__*,scalar_t__) ;
 scalar_t__ intsetSearch (TYPE_1__*,int ,scalar_t__*) ;
 TYPE_1__* intsetUpgradeAndAdd (TYPE_1__*,int ) ;

intset *intsetAdd(intset *is, int64_t value, uint8_t *success) {
    uint8_t valenc = _intsetValueEncoding(value);
    uint32_t pos;
    if (success) *success = 1;




    if (valenc > intrev32ifbe(is->encoding)) {

        return intsetUpgradeAndAdd(is,value);
    } else {



        if (intsetSearch(is,value,&pos)) {
            if (success) *success = 0;
            return is;
        }

        is = intsetResize(is,intrev32ifbe(is->length)+1);
        if (pos < intrev32ifbe(is->length)) intsetMoveTail(is,pos,pos+1);
    }

    _intsetSet(is,pos,value);
    is->length = intrev32ifbe(intrev32ifbe(is->length)+1);
    return is;
}
