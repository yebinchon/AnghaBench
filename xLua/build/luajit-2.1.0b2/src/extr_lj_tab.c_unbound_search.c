
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int cTValue ;
typedef int MSize ;
typedef int GCtab ;


 int INT_MAX ;
 int * lj_tab_getint (int *,int ) ;
 int tvisnil (int *) ;

__attribute__((used)) static MSize unbound_search(GCtab *t, MSize j)
{
  cTValue *tv;
  MSize i = j;
  j++;

  while ((tv = lj_tab_getint(t, (int32_t)j)) && !tvisnil(tv)) {
    i = j;
    j *= 2;
    if (j > (MSize)(INT_MAX-2)) {

      i = 1;
      while ((tv = lj_tab_getint(t, (int32_t)i)) && !tvisnil(tv)) i++;
      return i - 1;
    }
  }

  while (j - i > 1) {
    MSize m = (i+j)/2;
    cTValue *tvb = lj_tab_getint(t, (int32_t)m);
    if (tvb && !tvisnil(tvb)) i = m; else j = m;
  }
  return i;
}
