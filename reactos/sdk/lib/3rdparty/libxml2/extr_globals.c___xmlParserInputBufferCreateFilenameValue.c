
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlParserInputBufferCreateFilenameFunc ;
struct TYPE_2__ {int xmlParserInputBufferCreateFilenameValue; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlParserInputBufferCreateFilenameValue ;

xmlParserInputBufferCreateFilenameFunc *
__xmlParserInputBufferCreateFilenameValue(void) {
    if (IS_MAIN_THREAD)
 return (&xmlParserInputBufferCreateFilenameValue);
    else
 return (&xmlGetGlobalState()->xmlParserInputBufferCreateFilenameValue);
}
