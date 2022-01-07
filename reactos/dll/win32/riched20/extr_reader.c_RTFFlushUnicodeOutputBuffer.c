
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwOutputCount; int style; int OutputBuffer; int editor; } ;
typedef TYPE_1__ RTF_Info ;


 int ME_InsertTextFromCursor (int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
RTFFlushUnicodeOutputBuffer(RTF_Info *info)
{
        if (info->dwOutputCount)
        {
                ME_InsertTextFromCursor(info->editor, 0, info->OutputBuffer,
                                        info->dwOutputCount, info->style);
                info->dwOutputCount = 0;
        }
}
