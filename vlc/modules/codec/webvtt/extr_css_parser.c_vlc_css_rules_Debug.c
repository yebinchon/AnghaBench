
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* p_next; int p_declarations; int p_selectors; } ;
typedef TYPE_1__ vlc_css_rule_t ;


 int printf (char*,...) ;
 int vlc_css_declarations_Debug (int ,int) ;
 int vlc_css_selectors_Debug (int ,int) ;

__attribute__((used)) static void vlc_css_rules_Debug( const vlc_css_rule_t *p_rule, int depth )
{
    int j = 0;
    while(p_rule)
    {
        for(int i=0;i<depth;i++) printf(" "); printf("rule %d:\n", j++);
        vlc_css_selectors_Debug( p_rule->p_selectors, depth + 1 );
        vlc_css_declarations_Debug( p_rule->p_declarations, depth + 1 );
        p_rule = p_rule->p_next;
    }
}
