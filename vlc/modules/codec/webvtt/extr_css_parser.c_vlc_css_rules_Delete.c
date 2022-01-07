
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_declarations; int p_selectors; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ vlc_css_rule_t ;


 int free (TYPE_1__*) ;
 int vlc_css_declarations_Delete (int ) ;
 int vlc_css_selectors_Delete (int ) ;

void vlc_css_rules_Delete( vlc_css_rule_t *p_rule )
{
    while(p_rule)
    {
        vlc_css_rule_t *p_next = p_rule->p_next;
        vlc_css_selectors_Delete( p_rule->p_selectors );
        vlc_css_declarations_Delete( p_rule->p_declarations );
        free(p_rule);
        p_rule = p_next;
    }
}
