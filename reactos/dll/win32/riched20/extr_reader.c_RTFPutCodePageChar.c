
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwCPOutputCount; int dwMaxCPOutputCount; int* cpOutputBuffer; } ;
typedef TYPE_1__ RTF_Info ;


 int* heap_realloc (int*,int) ;

__attribute__((used)) static void
RTFPutCodePageChar(RTF_Info *info, int c)
{


        if (info->dwCPOutputCount >= info->dwMaxCPOutputCount)
        {
                info->dwMaxCPOutputCount *= 2;
                info->cpOutputBuffer = heap_realloc(info->cpOutputBuffer, info->dwMaxCPOutputCount);
        }
        info->cpOutputBuffer[info->dwCPOutputCount++] = c;
}
