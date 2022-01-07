
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_count; TYPE_1__* seq; } ;
typedef TYPE_2__ vlc_css_expr_t ;
struct TYPE_4__ {int term; } ;


 int printf (char*) ;
 int vlc_css_term_Debug (int ,int) ;

__attribute__((used)) static void vlc_css_expression_Debug( const vlc_css_expr_t *p_expr, int depth )
{
    if( p_expr )
    {
        for(int i=0;i<depth;i++) printf(" ");
        printf("expression: \n");
        for(size_t i=0; i<p_expr->i_count; i++)
            vlc_css_term_Debug( p_expr->seq[i].term, depth + 1 );
    }
}
