
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_first; } ;
struct TYPE_5__ {TYPE_1__ rules; } ;
typedef TYPE_2__ vlc_css_parser_t ;


 int vlc_css_rules_Delete (int ) ;

void vlc_css_parser_Clean( vlc_css_parser_t *p_parser )
{
    vlc_css_rules_Delete( p_parser->rules.p_first );
}
