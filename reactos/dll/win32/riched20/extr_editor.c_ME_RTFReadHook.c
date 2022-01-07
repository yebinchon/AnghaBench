
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rtfClass; size_t stackTop; TYPE_1__* stack; int unicodeLength; int codePage; int style; int styleChanged; int rtfMajor; } ;
struct TYPE_5__ {int unicodeLength; int codePage; int style; } ;
typedef TYPE_2__ RTF_Info ;


 int FALSE ;
 int ME_AddRefStyle (int ) ;
 int ME_ReleaseStyle (int ) ;
 int RTFFlushOutputBuffer (TYPE_2__*) ;
 size_t maxStack ;

 int rtfEOF ;



__attribute__((used)) static void ME_RTFReadHook(RTF_Info *info)
{
  switch(info->rtfClass)
  {
    case 128:
      switch(info->rtfMajor)
      {
        case 130:
          if (info->stackTop < maxStack) {
            info->stack[info->stackTop].style = info->style;
            ME_AddRefStyle(info->style);
            info->stack[info->stackTop].codePage = info->codePage;
            info->stack[info->stackTop].unicodeLength = info->unicodeLength;
          }
          info->stackTop++;
          info->styleChanged = FALSE;
          break;
        case 129:
        {
          RTFFlushOutputBuffer(info);
          info->stackTop--;
          if (info->stackTop <= 0)
            info->rtfClass = rtfEOF;
          if (info->stackTop < 0)
            return;

          ME_ReleaseStyle(info->style);
          info->style = info->stack[info->stackTop].style;
          info->codePage = info->stack[info->stackTop].codePage;
          info->unicodeLength = info->stack[info->stackTop].unicodeLength;
          break;
        }
      }
      break;
  }
}
