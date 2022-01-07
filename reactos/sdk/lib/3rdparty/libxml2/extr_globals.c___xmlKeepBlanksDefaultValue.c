
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmlKeepBlanksDefaultValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlKeepBlanksDefaultValue ;

int *
__xmlKeepBlanksDefaultValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlKeepBlanksDefaultValue);
    else
 return (&xmlGetGlobalState()->xmlKeepBlanksDefaultValue);
}
