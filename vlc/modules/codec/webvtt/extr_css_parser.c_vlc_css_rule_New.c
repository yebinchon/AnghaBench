
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_css_rule_t ;


 int * calloc (int,int) ;

vlc_css_rule_t * vlc_css_rule_New( void )
{
    vlc_css_rule_t *p_rule = calloc(1, sizeof(*p_rule));
    return p_rule;
}
