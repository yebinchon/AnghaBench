
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_5__ {int container_len; TYPE_1__* container; } ;
typedef TYPE_2__ fz_device ;
typedef int fz_context ;
struct TYPE_4__ {int scissor; } ;


 int fz_infinite_rect ;

fz_rect
fz_device_current_scissor(fz_context *ctx, fz_device *dev)
{
 if (dev->container_len > 0)
  return dev->container[dev->container_len-1].scissor;
 return fz_infinite_rect;
}
