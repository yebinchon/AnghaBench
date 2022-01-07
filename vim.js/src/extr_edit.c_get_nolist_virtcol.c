
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int colnr_T ;
struct TYPE_2__ {int w_virtcol; int w_cursor; scalar_t__ w_p_list; } ;


 int CPO_LISTWM ;
 TYPE_1__* curwin ;
 int getvcol_nolist (int *) ;
 int p_cpo ;
 int validate_virtcol () ;
 int * vim_strchr (int ,int ) ;

__attribute__((used)) static colnr_T
get_nolist_virtcol()
{
    if (curwin->w_p_list && vim_strchr(p_cpo, CPO_LISTWM) == ((void*)0))
 return getvcol_nolist(&curwin->w_cursor);
    validate_virtcol();
    return curwin->w_virtcol;
}
