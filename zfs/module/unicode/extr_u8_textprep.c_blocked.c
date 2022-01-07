
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ U8_COMBINING_CLASS_STARTER ;

__attribute__((used)) static boolean_t
blocked(uchar_t *comb_class, size_t last)
{
 uchar_t my_comb_class;
 size_t i;

 my_comb_class = comb_class[last];
 for (i = 1; i < last; i++)
  if (comb_class[i] >= my_comb_class ||
      comb_class[i] == U8_COMBINING_CLASS_STARTER)
   return (B_TRUE);

 return (B_FALSE);
}
