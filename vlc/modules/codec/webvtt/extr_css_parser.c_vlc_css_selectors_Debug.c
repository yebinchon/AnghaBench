
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_first; } ;
struct TYPE_5__ {int combinator; struct TYPE_5__* p_next; TYPE_1__ specifiers; struct TYPE_5__* p_matchsel; int psz_name; } ;
typedef TYPE_2__ vlc_css_selector_t ;


 int printf (char*,...) ;

__attribute__((used)) static void vlc_css_selectors_Debug( const vlc_css_selector_t *p_sel, int depth )
{
    while( p_sel )
    {
        for(int i=0;i<depth;i++) printf(" "); printf("selector %c%s:\n", p_sel->combinator, p_sel->psz_name );
        vlc_css_selectors_Debug( p_sel->p_matchsel, depth + 1 );
        vlc_css_selectors_Debug( p_sel->specifiers.p_first, depth + 1 );
        p_sel = p_sel->p_next;
    }
}
