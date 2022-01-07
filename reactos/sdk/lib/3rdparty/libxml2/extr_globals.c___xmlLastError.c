
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlError ;
struct TYPE_2__ {int xmlLastError; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlLastError ;

xmlError *
__xmlLastError(void) {
    if (IS_MAIN_THREAD)
 return (&xmlLastError);
    else
 return (&xmlGetGlobalState()->xmlLastError);
}
