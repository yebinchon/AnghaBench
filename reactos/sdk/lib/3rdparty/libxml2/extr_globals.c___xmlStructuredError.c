
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlStructuredErrorFunc ;
struct TYPE_2__ {int xmlStructuredError; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlStructuredError ;

xmlStructuredErrorFunc *
__xmlStructuredError(void) {
    if (IS_MAIN_THREAD)
 return (&xmlStructuredError);
    else
 return (&xmlGetGlobalState()->xmlStructuredError);
}
