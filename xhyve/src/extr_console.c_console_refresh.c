
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fb_arg; int gc; int (* fb_render_cb ) (int ,int ) ;} ;


 TYPE_1__ console ;
 int stub1 (int ,int ) ;

void
console_refresh(void)
{
 if (console.fb_render_cb)
  (*console.fb_render_cb)(console.gc, console.fb_arg);
}
