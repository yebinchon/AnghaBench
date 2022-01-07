
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_property; int expr; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ vlc_css_declaration_t ;


 int free (TYPE_1__*) ;
 int vlc_css_expression_Delete (int ) ;

void vlc_css_declarations_Delete( vlc_css_declaration_t *p_decl )
{
    while( p_decl )
    {
        vlc_css_declaration_t *p_next = p_decl->p_next;
        vlc_css_expression_Delete( p_decl->expr );
        free( p_decl->psz_property );
        free( p_decl );
        p_decl = p_next;
    }
}
