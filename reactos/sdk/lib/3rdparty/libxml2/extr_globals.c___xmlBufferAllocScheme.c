
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlBufferAllocationScheme ;
struct TYPE_2__ {int xmlBufferAllocScheme; } ;


 scalar_t__ IS_MAIN_THREAD ;
 int xmlBufferAllocScheme ;
 TYPE_1__* xmlGetGlobalState () ;

xmlBufferAllocationScheme *
__xmlBufferAllocScheme(void) {
    if (IS_MAIN_THREAD)
 return (&xmlBufferAllocScheme);
    else
 return (&xmlGetGlobalState()->xmlBufferAllocScheme);
}
