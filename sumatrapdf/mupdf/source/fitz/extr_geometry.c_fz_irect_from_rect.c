
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_7__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef TYPE_2__ fz_irect ;


 int MAX_SAFE_INT ;
 int MIN_SAFE_INT ;
 int ceilf (int ) ;
 int floorf (int ) ;
 void* fz_clamp (int ,int ,int ) ;
 scalar_t__ fz_is_empty_rect (TYPE_1__) ;

fz_irect
fz_irect_from_rect(fz_rect r)
{
 fz_irect b;
 if (fz_is_empty_rect(r))
 {
  b.x0 = 0;
  b.y0 = 0;
  b.x1 = 0;
  b.y1 = 0;
 }
 else
 {
  b.x0 = fz_clamp(floorf(r.x0), MIN_SAFE_INT, MAX_SAFE_INT);
  b.y0 = fz_clamp(floorf(r.y0), MIN_SAFE_INT, MAX_SAFE_INT);
  b.x1 = fz_clamp(ceilf(r.x1), MIN_SAFE_INT, MAX_SAFE_INT);
  b.y1 = fz_clamp(ceilf(r.y1), MIN_SAFE_INT, MAX_SAFE_INT);
 }
 return b;
}
