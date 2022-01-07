
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlRegisterNodeFunc ;
struct TYPE_2__ {int xmlRegisterNodeDefaultValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlRegisterNodeDefaultValue ;

xmlRegisterNodeFunc *
__xmlRegisterNodeDefaultValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlRegisterNodeDefaultValue);
    else
 return (&xmlGetGlobalState()->xmlRegisterNodeDefaultValue);
}
