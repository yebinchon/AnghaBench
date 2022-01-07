
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {scalar_t__ OutputBuffer; scalar_t__ dwOutputCount; scalar_t__ dwCPOutputCount; } ;
typedef TYPE_1__ RTF_Info ;


 scalar_t__ ARRAY_SIZE (scalar_t__) ;
 int RTFFlushCPOutputBuffer (TYPE_1__*) ;
 int RTFFlushUnicodeOutputBuffer (TYPE_1__*) ;
 int memmove (scalar_t__,int const*,int) ;
 int min (int,scalar_t__) ;

__attribute__((used)) static void
RTFPutUnicodeString(RTF_Info *info, const WCHAR *string, int length)
{
        if (info->dwCPOutputCount)
                RTFFlushCPOutputBuffer(info);
        while (length)
        {
                int fit = min(length, ARRAY_SIZE(info->OutputBuffer) - info->dwOutputCount);

                memmove(info->OutputBuffer + info->dwOutputCount, string, fit * sizeof(WCHAR));
                info->dwOutputCount += fit;
                length -= fit;
                string += fit;
                if (ARRAY_SIZE(info->OutputBuffer) == info->dwOutputCount)
                        RTFFlushUnicodeOutputBuffer(info);
        }
}
