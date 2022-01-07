
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int length; } ;
typedef TYPE_1__ intset ;


 int intrev32ifbe (int ) ;

uint32_t intsetLen(const intset *is) {
    return intrev32ifbe(is->length);
}
