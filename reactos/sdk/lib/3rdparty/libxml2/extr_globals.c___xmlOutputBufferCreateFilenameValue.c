
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlOutputBufferCreateFilenameFunc ;
struct TYPE_2__ {int xmlOutputBufferCreateFilenameValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlOutputBufferCreateFilenameValue ;

xmlOutputBufferCreateFilenameFunc *
__xmlOutputBufferCreateFilenameValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlOutputBufferCreateFilenameValue);
    else
 return (&xmlGetGlobalState()->xmlOutputBufferCreateFilenameValue);
}
