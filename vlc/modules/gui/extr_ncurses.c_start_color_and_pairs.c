
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int color; int yellow_b; int yellow_g; int yellow_r; } ;
typedef TYPE_2__ intf_sys_t ;
struct TYPE_8__ {int b; int f; } ;


 int COLOR_YELLOW ;
 int C_DEFAULT ;
 int C_MAX ;
 scalar_t__ can_change_color () ;
 int color_content (int ,int *,int *,int *) ;
 TYPE_5__* color_pairs ;
 int has_colors () ;
 int init_color (int ,int,int,int ) ;
 int init_pair (int,int ,int ) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int start_color () ;

__attribute__((used)) static void start_color_and_pairs(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    if (!has_colors()) {
        sys->color = 0;
        msg_Warn(intf, "Terminal doesn't support colors");
        return;
    }

    start_color();
    for (int i = C_DEFAULT + 1; i < C_MAX; i++)
        init_pair(i, color_pairs[i].f, color_pairs[i].b);


    if (can_change_color()) {
        color_content(COLOR_YELLOW, &sys->yellow_r, &sys->yellow_g, &sys->yellow_b);
        init_color(COLOR_YELLOW, 960, 500, 0);
    }
}
