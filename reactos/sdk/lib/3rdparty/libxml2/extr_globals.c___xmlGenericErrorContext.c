
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* xmlGenericErrorContext; } ;


 scalar_t__ IS_MAIN_THREAD ;
 void* xmlGenericErrorContext ;
 TYPE_1__* xmlGetGlobalState () ;

void * *
__xmlGenericErrorContext(void) {
    if (IS_MAIN_THREAD)
 return (&xmlGenericErrorContext);
    else
 return (&xmlGetGlobalState()->xmlGenericErrorContext);
}
