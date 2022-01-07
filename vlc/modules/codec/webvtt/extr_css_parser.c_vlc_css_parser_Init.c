
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_first; int * pp_append; } ;
struct TYPE_6__ {TYPE_1__ rules; } ;
typedef TYPE_2__ vlc_css_parser_t ;


 int memset (TYPE_2__*,int ,int) ;

void vlc_css_parser_Init( vlc_css_parser_t *p_parser )
{
    memset(p_parser, 0, sizeof(vlc_css_parser_t));
    p_parser->rules.pp_append = &p_parser->rules.p_first;
}
