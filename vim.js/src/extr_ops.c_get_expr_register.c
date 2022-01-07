
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int NUL ;
 int* getcmdline (char,long,int ) ;
 int set_expr_line (int*) ;
 int vim_free (int*) ;

int
get_expr_register()
{
    char_u *new_line;

    new_line = getcmdline('=', 0L, 0);
    if (new_line == ((void*)0))
 return NUL;
    if (*new_line == NUL)
 vim_free(new_line);
    else
 set_expr_line(new_line);
    return '=';
}
