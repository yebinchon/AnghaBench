
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ passthrough; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_end_tile (int *,scalar_t__) ;

__attribute__((used)) static void
fz_test_end_tile(fz_context *ctx, fz_device *dev_)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->passthrough)
  fz_end_tile(ctx, dev->passthrough);
}
