
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pushedClass; scalar_t__ rtfClass; size_t stackTop; int style; TYPE_1__* stack; int rtfTextBuf; int pushedTextBuf; int rtfParam; int pushedParam; int rtfMinor; int pushedMinor; int rtfMajor; int pushedMajor; } ;
struct TYPE_5__ {int style; } ;
typedef TYPE_2__ RTF_Info ;


 int ERR (char*) ;
 int ME_AddRefStyle (int ) ;
 scalar_t__ RTFCheckCM (TYPE_2__*,int ,int ) ;
 int lstrcpyA (int ,int ) ;
 int rtfEndGroup ;
 int rtfGroup ;

__attribute__((used)) static void RTFUngetToken(RTF_Info *info)
{
 if (info->pushedClass >= 0)
  ERR ("cannot unget two tokens\n");
 if (info->rtfClass < 0)
  ERR ("no token to unget\n");
 info->pushedClass = info->rtfClass;
 info->pushedMajor = info->rtfMajor;
 info->pushedMinor = info->rtfMinor;
 info->pushedParam = info->rtfParam;
 lstrcpyA (info->pushedTextBuf, info->rtfTextBuf);



 if(RTFCheckCM (info, rtfGroup, rtfEndGroup))
 {
  info->stack[info->stackTop].style = info->style;
  ME_AddRefStyle(info->style);
  info->stackTop++;
 }
}
