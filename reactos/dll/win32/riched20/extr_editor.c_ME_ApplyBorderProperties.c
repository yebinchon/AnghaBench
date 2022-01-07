
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {void* colorRef; int width; } ;
struct TYPE_12__ {TYPE_5__ right; TYPE_5__ bottom; TYPE_5__ left; TYPE_5__ top; } ;
struct TYPE_11__ {int color; int width; } ;
struct TYPE_10__ {int rtfCNum; scalar_t__ rtfCRed; scalar_t__ rtfCGreen; scalar_t__ rtfCBlue; struct TYPE_10__* rtfNextColor; } ;
struct TYPE_9__ {TYPE_2__* colorList; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFColor ;
typedef TYPE_3__ RTFBorder ;
typedef TYPE_4__ ME_BorderRect ;
typedef TYPE_5__ ME_Border ;


 void* RGB (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ME_ApplyBorderProperties(RTF_Info *info,
                                     ME_BorderRect *borderRect,
                                     RTFBorder *borderDef)
{
  int i, colorNum;
  ME_Border *pBorders[] = {&borderRect->top,
                           &borderRect->left,
                           &borderRect->bottom,
                           &borderRect->right};
  for (i = 0; i < 4; i++)
  {
    RTFColor *colorDef = info->colorList;
    pBorders[i]->width = borderDef[i].width;
    colorNum = borderDef[i].color;
    while (colorDef && colorDef->rtfCNum != colorNum)
      colorDef = colorDef->rtfNextColor;
    if (colorDef)
      pBorders[i]->colorRef = RGB(
                           colorDef->rtfCRed >= 0 ? colorDef->rtfCRed : 0,
                           colorDef->rtfCGreen >= 0 ? colorDef->rtfCGreen : 0,
                           colorDef->rtfCBlue >= 0 ? colorDef->rtfCBlue : 0);
    else
      pBorders[i]->colorRef = RGB(0, 0, 0);
  }
}
