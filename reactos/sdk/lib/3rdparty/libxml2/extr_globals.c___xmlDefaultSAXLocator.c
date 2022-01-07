
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlSAXLocator ;
struct TYPE_2__ {int xmlDefaultSAXLocator; } ;


 scalar_t__ IS_MAIN_THREAD ;
 int xmlDefaultSAXLocator ;
 TYPE_1__* xmlGetGlobalState () ;

xmlSAXLocator *
__xmlDefaultSAXLocator(void) {
    if (IS_MAIN_THREAD)
 return (&xmlDefaultSAXLocator);
    else
 return (&xmlGetGlobalState()->xmlDefaultSAXLocator);
}
