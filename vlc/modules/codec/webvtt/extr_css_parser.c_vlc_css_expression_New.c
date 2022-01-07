
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_css_term_t ;
typedef int vlc_css_expr_t ;


 int * calloc (int,int) ;
 int free (int *) ;
 int vlc_css_expression_AddTerm (int *,int ,int ) ;

vlc_css_expr_t * vlc_css_expression_New( vlc_css_term_t term )
{
    vlc_css_expr_t *p_expr = calloc(1, sizeof(*p_expr));
    if(!vlc_css_expression_AddTerm( p_expr, 0, term ))
    {
        free(p_expr);
        p_expr = ((void*)0);
    }
    return p_expr;
}
