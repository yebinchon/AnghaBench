
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz_property; } ;
typedef TYPE_1__ vlc_css_declaration_t ;


 TYPE_1__* calloc (int,int) ;
 int strdup (char const*) ;

vlc_css_declaration_t * vlc_css_declaration_New( const char *psz )
{
    vlc_css_declaration_t *p_decl = calloc(1, sizeof(*p_decl));
    p_decl->psz_property = strdup(psz);
    return p_decl;
}
