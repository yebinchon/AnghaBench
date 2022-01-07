
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_5__ {int container_len; int container_cap; TYPE_3__* container; } ;
typedef TYPE_1__ fz_device ;
typedef int fz_context ;
struct TYPE_6__ {int type; scalar_t__ user; int scissor; } ;


 int fz_device_container_stack ;
 int fz_intersect_rect (int ,int ) ;
 TYPE_3__* fz_realloc_array (int *,TYPE_3__*,int,int ) ;

__attribute__((used)) static void
push_clip_stack(fz_context *ctx, fz_device *dev, fz_rect rect, int type)
{
 if (dev->container_len == dev->container_cap)
 {
  int newmax = dev->container_cap * 2;
  if (newmax == 0)
   newmax = 4;
  dev->container = fz_realloc_array(ctx, dev->container, newmax, fz_device_container_stack);
  dev->container_cap = newmax;
 }
 if (dev->container_len == 0)
  dev->container[0].scissor = rect;
 else
 {
  dev->container[dev->container_len].scissor = fz_intersect_rect(dev->container[dev->container_len-1].scissor, rect);
 }
 dev->container[dev->container_len].type = type;
 dev->container[dev->container_len].user = 0;
 dev->container_len++;
}
