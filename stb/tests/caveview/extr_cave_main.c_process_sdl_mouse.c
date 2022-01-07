
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ yrel; scalar_t__ xrel; } ;
struct TYPE_5__ {TYPE_1__ motion; } ;
typedef TYPE_2__ SDL_Event ;


 float screen_x ;
 float screen_y ;
 int update_view (float,float) ;

void process_sdl_mouse(SDL_Event *e)
{
   update_view((float) e->motion.xrel / screen_x, (float) e->motion.yrel / screen_y);
}
