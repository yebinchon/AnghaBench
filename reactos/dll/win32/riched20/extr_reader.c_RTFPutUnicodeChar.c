
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int dwOutputCount; int* OutputBuffer; scalar_t__ dwCPOutputCount; } ;
typedef TYPE_1__ RTF_Info ;


 int RTFFlushCPOutputBuffer (TYPE_1__*) ;
 int RTFFlushUnicodeOutputBuffer (TYPE_1__*) ;

__attribute__((used)) static void
RTFPutUnicodeChar(RTF_Info *info, int c)
{
 if (info->dwCPOutputCount)
                RTFFlushCPOutputBuffer(info);
        if (info->dwOutputCount * sizeof(WCHAR) >= ( sizeof info->OutputBuffer - 1 ) )
  RTFFlushUnicodeOutputBuffer( info );
 info->OutputBuffer[info->dwOutputCount++] = c;
}
