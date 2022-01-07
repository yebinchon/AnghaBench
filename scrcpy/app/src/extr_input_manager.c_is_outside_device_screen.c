
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_manager {TYPE_2__* screen; } ;
struct TYPE_3__ {int width; int height; } ;
struct TYPE_4__ {TYPE_1__ frame_size; } ;



__attribute__((used)) static bool
is_outside_device_screen(struct input_manager *input_manager, int x, int y)
{
    return x < 0 || x >= input_manager->screen->frame_size.width ||
           y < 0 || y >= input_manager->screen->frame_size.height;
}
