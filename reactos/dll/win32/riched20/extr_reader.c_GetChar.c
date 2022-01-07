
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* rtfTextBuf; size_t rtfTextLen; int prevChar; int rtfLinePos; int rtfLineNum; void* bumpLine; } ;
typedef TYPE_1__ RTF_Info ;
typedef void* BOOL ;


 int EOF ;
 void* FALSE ;
 void* TRUE ;
 int _RTFGetChar (TYPE_1__*) ;

__attribute__((used)) static int GetChar(RTF_Info *info)
{
 int c;
        BOOL oldBumpLine;

 if ((c = _RTFGetChar(info)) != EOF)
 {
  info->rtfTextBuf[info->rtfTextLen++] = c;
  info->rtfTextBuf[info->rtfTextLen] = '\0';
 }
 if (info->prevChar == EOF)
                info->bumpLine = TRUE;
        oldBumpLine = info->bumpLine;
        info->bumpLine = FALSE;
 if (c == '\r')
                info->bumpLine = TRUE;
 else if (c == '\n')
 {
                info->bumpLine = TRUE;
  if (info->prevChar == '\r')
                        oldBumpLine = FALSE;
 }
 ++info->rtfLinePos;
 if (oldBumpLine)
 {
  ++info->rtfLineNum;
  info->rtfLinePos = 1;
 }
 info->prevChar = c;
 return (c);
}
