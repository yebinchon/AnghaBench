
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmlLoadExtDtdDefaultValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlLoadExtDtdDefaultValue ;

int *
__xmlLoadExtDtdDefaultValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlLoadExtDtdDefaultValue);
    else
 return (&xmlGetGlobalState()->xmlLoadExtDtdDefaultValue);
}
