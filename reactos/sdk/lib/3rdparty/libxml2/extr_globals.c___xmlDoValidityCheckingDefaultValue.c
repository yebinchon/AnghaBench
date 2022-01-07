
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmlDoValidityCheckingDefaultValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 int xmlDoValidityCheckingDefaultValue ;
 TYPE_1__* xmlGetGlobalState () ;

int *
__xmlDoValidityCheckingDefaultValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlDoValidityCheckingDefaultValue);
    else
 return (&xmlGetGlobalState()->xmlDoValidityCheckingDefaultValue);
}
