
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int TRUE ;
 int * eval_to_string (int *,int *,int ) ;
 int * expr_line ;
 int vim_free (int *) ;
 int * vim_strsave (int *) ;

char_u *
get_expr_line()
{
    char_u *expr_copy;
    char_u *rv;
    static int nested = 0;

    if (expr_line == ((void*)0))
 return ((void*)0);



    expr_copy = vim_strsave(expr_line);
    if (expr_copy == ((void*)0))
 return ((void*)0);



    if (nested >= 10)
 return expr_copy;

    ++nested;
    rv = eval_to_string(expr_copy, ((void*)0), TRUE);
    --nested;
    vim_free(expr_copy);
    return rv;
}
