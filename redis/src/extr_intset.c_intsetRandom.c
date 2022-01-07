
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
typedef TYPE_1__ intset ;
typedef int int64_t ;


 int _intsetGet (TYPE_1__*,int) ;
 int intrev32ifbe (int ) ;
 int rand () ;

int64_t intsetRandom(intset *is) {
    return _intsetGet(is,rand()%intrev32ifbe(is->length));
}
