
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t i_count; struct TYPE_4__* seq; int term; } ;
typedef TYPE_1__ vlc_css_expr_t ;


 int free (TYPE_1__*) ;
 int vlc_css_term_Clean (int ) ;

void vlc_css_expression_Delete( vlc_css_expr_t *p_expr )
{
    if( p_expr )
    {
        for(size_t i=0; i<p_expr->i_count; i++)
            vlc_css_term_Clean( p_expr->seq[i].term );
        free( p_expr->seq );
    }
    free( p_expr );
}
