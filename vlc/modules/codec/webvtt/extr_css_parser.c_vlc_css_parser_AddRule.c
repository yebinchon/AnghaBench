
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* p_next; } ;
typedef TYPE_2__ vlc_css_rule_t ;
struct TYPE_6__ {TYPE_2__** pp_append; } ;
struct TYPE_8__ {TYPE_1__ rules; } ;
typedef TYPE_3__ vlc_css_parser_t ;



void vlc_css_parser_AddRule( vlc_css_parser_t *p_parser,
                                           vlc_css_rule_t *p_rule )
{
    (*p_parser->rules.pp_append) = p_rule;
    p_parser->rules.pp_append = &p_rule->p_next;
}
