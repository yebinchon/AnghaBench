
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ print_direction; scalar_t__ justify; } ;
struct TYPE_5__ {TYPE_1__ style; } ;
typedef TYPE_2__ cea708_window_t ;


 scalar_t__ CEA708_WA_DIRECTION_LTR ;
 scalar_t__ CEA708_WA_DIRECTION_RTL ;
 scalar_t__ CEA708_WA_JUSTIFY_LEFT ;
 scalar_t__ CEA708_WA_JUSTIFY_RIGHT ;

__attribute__((used)) static bool CEA708_Window_BreaksSpace( const cea708_window_t *p_w )
{
    return 1;
    if( p_w->style.print_direction == CEA708_WA_DIRECTION_LTR &&
        p_w->style.justify == CEA708_WA_JUSTIFY_LEFT )
        return 1;

    if( p_w->style.print_direction == CEA708_WA_DIRECTION_RTL &&
        p_w->style.justify == CEA708_WA_JUSTIFY_RIGHT )
        return 1;

    return 0;
}
