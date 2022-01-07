
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ansiCodePage; int rtfMinor; } ;
typedef TYPE_1__ RTF_Info ;


 scalar_t__ CP_UTF8 ;





__attribute__((used)) static void
CharSet(RTF_Info *info)
{
 if (info->ansiCodePage == CP_UTF8)
  return;

        switch (info->rtfMinor)
        {
        case 131:
                info->ansiCodePage = 1252;
                break;
        case 130:
                info->ansiCodePage = 10000;
                break;
        case 129:
                info->ansiCodePage = 437;
                break;
        case 128:
                info->ansiCodePage = 850;
                break;
        }
}
