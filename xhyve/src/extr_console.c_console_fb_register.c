
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fb_render_func_t ;
struct TYPE_2__ {void* fb_arg; int fb_render_cb; } ;


 TYPE_1__ console ;

void
console_fb_register(fb_render_func_t render_cb, void *arg)
{
 console.fb_render_cb = render_cb;
 console.fb_arg = arg;
}
