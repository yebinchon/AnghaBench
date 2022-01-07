
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int * expr_line ;
 int * vim_strsave (int *) ;

char_u *
get_expr_line_src()
{
    if (expr_line == ((void*)0))
 return ((void*)0);
    return vim_strsave(expr_line);
}
