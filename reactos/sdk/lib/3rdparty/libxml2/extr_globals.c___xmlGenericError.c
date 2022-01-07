
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlGenericErrorFunc ;
struct TYPE_2__ {int xmlGenericError; } ;


 scalar_t__ IS_MAIN_THREAD ;
 int xmlGenericError ;
 TYPE_1__* xmlGetGlobalState () ;

xmlGenericErrorFunc *
__xmlGenericError(void) {
    if (IS_MAIN_THREAD)
 return (&xmlGenericError);
    else
 return (&xmlGetGlobalState()->xmlGenericError);
}
