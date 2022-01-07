
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef TYPE_1__ fz_irect ;


 void* ADD_WITH_SAT (int,void*,int) ;
 scalar_t__ fz_is_empty_irect (TYPE_1__) ;
 scalar_t__ fz_is_infinite_irect (TYPE_1__) ;

fz_irect
fz_translate_irect(fz_irect a, int xoff, int yoff)
{
 int t;

 if (fz_is_empty_irect(a)) return a;
 if (fz_is_infinite_irect(a)) return a;
 a.x0 = ADD_WITH_SAT(t, a.x0, xoff);
 a.y0 = ADD_WITH_SAT(t, a.y0, yoff);
 a.x1 = ADD_WITH_SAT(t, a.x1, xoff);
 a.y1 = ADD_WITH_SAT(t, a.y1, yoff);
 return a;
}
