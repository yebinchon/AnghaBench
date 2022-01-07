
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cTValue ;


 int gcV (int *) ;
 int gc_mark_str (int ) ;
 scalar_t__ isfinalized (int ) ;
 scalar_t__ iswhite (int ) ;
 int strV (int *) ;
 scalar_t__ tvisgcv (int *) ;
 scalar_t__ tvisstr (int *) ;
 scalar_t__ tvisudata (int *) ;
 int udataV (int *) ;

__attribute__((used)) static int gc_mayclear(cTValue *o, int val)
{
  if (tvisgcv(o)) {
    if (tvisstr(o)) {
      gc_mark_str(strV(o));
      return 0;
    }
    if (iswhite(gcV(o)))
      return 1;
    if (tvisudata(o) && val && isfinalized(udataV(o)))
      return 1;
  }
  return 0;
}
