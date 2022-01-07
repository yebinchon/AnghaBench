
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_first; int * pp_append; } ;
struct TYPE_6__ {int type; TYPE_1__ specifiers; int combinator; int psz_name; } ;
typedef TYPE_2__ vlc_css_selector_t ;


 int RELATION_SELF ;
 TYPE_2__* calloc (int,int) ;
 int strdup (char const*) ;

vlc_css_selector_t * vlc_css_selector_New( int type, const char *psz )
{
    vlc_css_selector_t *p_sel = calloc(1, sizeof(*p_sel));
    p_sel->psz_name = strdup(psz);
    p_sel->type = type;
    p_sel->combinator = RELATION_SELF;
    p_sel->specifiers.pp_append = &p_sel->specifiers.p_first;
    return p_sel;
}
