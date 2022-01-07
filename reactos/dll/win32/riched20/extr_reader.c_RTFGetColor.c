
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rtfCNum; struct TYPE_6__* rtfNextColor; } ;
struct TYPE_5__ {TYPE_2__* colorList; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFColor ;



RTFColor *RTFGetColor(const RTF_Info *info, int num)
{
 RTFColor *c;

 if (num == -1)
  return (info->colorList);
 for (c = info->colorList; c != ((void*)0); c = c->rtfNextColor)
 {
  if (c->rtfCNum == num)
   break;
 }
 return (c);
}
