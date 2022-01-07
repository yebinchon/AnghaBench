
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int encoding; int length; } ;
typedef TYPE_1__ intset ;
typedef scalar_t__ int64_t ;


 scalar_t__ _intsetGetEncoded (TYPE_1__*,int,int) ;
 int _intsetSet (TYPE_1__*,int,scalar_t__) ;
 int _intsetValueEncoding (scalar_t__) ;
 int intrev32ifbe (int) ;
 TYPE_1__* intsetResize (TYPE_1__*,int ) ;

__attribute__((used)) static intset *intsetUpgradeAndAdd(intset *is, int64_t value) {
    uint8_t curenc = intrev32ifbe(is->encoding);
    uint8_t newenc = _intsetValueEncoding(value);
    int length = intrev32ifbe(is->length);
    int prepend = value < 0 ? 1 : 0;


    is->encoding = intrev32ifbe(newenc);
    is = intsetResize(is,intrev32ifbe(is->length)+1);




    while(length--)
        _intsetSet(is,length+prepend,_intsetGetEncoded(is,length,curenc));


    if (prepend)
        _intsetSet(is,0,value);
    else
        _intsetSet(is,intrev32ifbe(is->length),value);
    is->length = intrev32ifbe(intrev32ifbe(is->length)+1);
    return is;
}
