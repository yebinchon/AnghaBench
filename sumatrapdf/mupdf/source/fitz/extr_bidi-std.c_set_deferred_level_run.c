
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_level ;



__attribute__((used)) static
void set_deferred_level_run(fz_bidi_level *pval, size_t cval, size_t iStart, fz_bidi_level nval)
{
 size_t i;

 for (i = iStart; i > iStart - cval; )
 {
  pval[--i] = nval;
 }
}
