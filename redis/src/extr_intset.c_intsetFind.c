
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int encoding; } ;
typedef TYPE_1__ intset ;
typedef int int64_t ;


 scalar_t__ _intsetValueEncoding (int ) ;
 scalar_t__ intrev32ifbe (int ) ;
 scalar_t__ intsetSearch (TYPE_1__*,int ,int *) ;

uint8_t intsetFind(intset *is, int64_t value) {
    uint8_t valenc = _intsetValueEncoding(value);
    return valenc <= intrev32ifbe(is->encoding) && intsetSearch(is,value,((void*)0));
}
