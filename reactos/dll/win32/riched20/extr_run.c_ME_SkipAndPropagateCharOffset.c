
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_DisplayItem ;


 int * ME_FindItemFwd (int *,int ) ;
 int ME_PropagateCharOffset (int *,int) ;
 int assert (int *) ;
 int diRunOrParagraphOrEnd ;

void ME_SkipAndPropagateCharOffset(ME_DisplayItem *p, int shift)
{
  p = ME_FindItemFwd(p, diRunOrParagraphOrEnd);
  assert(p);
  ME_PropagateCharOffset(p, shift);
}
