
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* rtfSName; struct TYPE_9__* rtfSEText; struct TYPE_9__* rtfNextSE; struct TYPE_9__* rtfSSEList; struct TYPE_9__* rtfNextStyle; struct TYPE_9__* rtfNextColor; struct TYPE_9__* rtfFName; struct TYPE_9__* rtfNextFont; } ;
struct TYPE_8__ {TYPE_2__* styleList; TYPE_2__* colorList; TYPE_2__* fontList; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFStyleElt ;
typedef TYPE_2__ RTFStyle ;
typedef TYPE_2__ RTFFont ;
typedef TYPE_2__ RTFColor ;


 int heap_free (TYPE_2__*) ;

__attribute__((used)) static void
RTFDestroyAttrs(RTF_Info *info)
{
 RTFColor *cp;
 RTFFont *fp;
 RTFStyle *sp;
 RTFStyleElt *eltList, *ep;

 while (info->fontList)
 {
  fp = info->fontList->rtfNextFont;
  heap_free (info->fontList->rtfFName);
  heap_free (info->fontList);
  info->fontList = fp;
 }
 while (info->colorList)
 {
  cp = info->colorList->rtfNextColor;
  heap_free (info->colorList);
  info->colorList = cp;
 }
 while (info->styleList)
 {
  sp = info->styleList->rtfNextStyle;
  eltList = info->styleList->rtfSSEList;
  while (eltList)
  {
   ep = eltList->rtfNextSE;
   heap_free (eltList->rtfSEText);
   heap_free (eltList);
   eltList = ep;
  }
  heap_free (info->styleList->rtfSName);
  heap_free (info->styleList);
  info->styleList = sp;
 }
}
