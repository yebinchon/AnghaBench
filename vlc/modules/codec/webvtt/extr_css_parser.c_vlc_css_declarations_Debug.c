
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_property; struct TYPE_3__* p_next; int expr; } ;
typedef TYPE_1__ vlc_css_declaration_t ;


 int printf (char*,...) ;
 int vlc_css_expression_Debug (int ,int) ;

__attribute__((used)) static void vlc_css_declarations_Debug( const vlc_css_declaration_t *p_decl, int depth )
{
    while( p_decl )
    {
        for(int i=0;i<depth;i++) printf(" ");
        printf("declaration: %s\n", p_decl->psz_property );
        vlc_css_expression_Debug( p_decl->expr, depth + 1 );
        p_decl = p_decl->p_next;
    }
}
