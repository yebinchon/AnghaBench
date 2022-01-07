
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rtfFNum; struct TYPE_6__* rtfNextFont; } ;
struct TYPE_5__ {TYPE_2__* fontList; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFFont ;



RTFFont *RTFGetFont(const RTF_Info *info, int num)
{
 RTFFont *f;

 if (num == -1)
  return (info->fontList);
 for (f = info->fontList; f != ((void*)0); f = f->rtfNextFont)
 {
  if (f->rtfFNum == num)
   break;
 }
 return (f);
}
