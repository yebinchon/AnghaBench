
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwCPOutputCount; } ;
typedef TYPE_1__ RTF_Info ;


 int RTFFlushCPOutputBuffer (TYPE_1__*) ;
 int RTFFlushUnicodeOutputBuffer (TYPE_1__*) ;

void
RTFFlushOutputBuffer(RTF_Info *info)
{
        if (info->dwCPOutputCount)
                RTFFlushCPOutputBuffer(info);
        RTFFlushUnicodeOutputBuffer(info);
}
