
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_9__ {void* x; void* y; } ;
typedef TYPE_2__ fz_point ;


 int fz_expand_rect (TYPE_1__,float) ;
 void* fz_max (void*,void*) ;
 void* fz_min (void*,void*) ;
 TYPE_1__ fz_union_rect (TYPE_1__,int ) ;

__attribute__((used)) static void
union_quad(fz_rect *rect, const fz_point quad[4], float lw)
{
 fz_rect qbox;
 qbox.x0 = fz_min(fz_min(quad[0].x, quad[1].x), fz_min(quad[2].x, quad[3].x));
 qbox.y0 = fz_min(fz_min(quad[0].y, quad[1].y), fz_min(quad[2].y, quad[3].y));
 qbox.x1 = fz_max(fz_max(quad[0].x, quad[1].x), fz_max(quad[2].x, quad[3].x));
 qbox.y1 = fz_max(fz_max(quad[0].y, quad[1].y), fz_max(quad[2].y, quad[3].y));
 *rect = fz_union_rect(*rect, fz_expand_rect(qbox, lw));
}
