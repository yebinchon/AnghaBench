
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int print_direction; } ;
struct TYPE_6__ {TYPE_1__ style; } ;
typedef TYPE_2__ cea708_window_t ;






 int CEA708_Window_Forward (TYPE_2__*) ;

__attribute__((used)) static void CEA708_Window_Backward( cea708_window_t *p_w )
{
    static const int reverse[] =
    {
        [130] = 129,
        [129] = 130,
        [128] = 131,
        [131] = 128,
    };
    int save = p_w->style.print_direction;
    p_w->style.print_direction = reverse[p_w->style.print_direction];
    CEA708_Window_Forward( p_w );
    p_w->style.print_direction = save;
}
