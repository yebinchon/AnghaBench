
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlDeregisterNodeFunc ;
struct TYPE_2__ {int xmlDeregisterNodeDefaultValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 int xmlDeregisterNodeDefaultValue ;
 TYPE_1__* xmlGetGlobalState () ;

xmlDeregisterNodeFunc *
__xmlDeregisterNodeDefaultValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlDeregisterNodeDefaultValue);
    else
 return (&xmlGetGlobalState()->xmlDeregisterNodeDefaultValue);
}
