
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ passthrough; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_begin_tile_id (int *,scalar_t__,int ,int ,float,float,int ,int) ;

__attribute__((used)) static int
fz_test_begin_tile(fz_context *ctx, fz_device *dev_, fz_rect area, fz_rect view, float xstep, float ystep, fz_matrix ctm, int id)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->passthrough)
  return fz_begin_tile_id(ctx, dev->passthrough, area, view, xstep, ystep, ctm, id);
 else
  return 0;
}
