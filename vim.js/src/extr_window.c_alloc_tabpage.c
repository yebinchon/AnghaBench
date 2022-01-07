
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* tp_prev_which_scrollbars; int tp_ch_used; int tp_diff_invalid; int tp_winvar; int * tp_vars; } ;
typedef TYPE_1__ tabpage_T ;


 int TRUE ;
 int VAR_SCOPE ;
 scalar_t__ alloc_clear (unsigned int) ;
 int * dict_alloc () ;
 int init_var_dict (int *,int *,int ) ;
 int p_ch ;
 int vim_free (TYPE_1__*) ;

__attribute__((used)) static tabpage_T *
alloc_tabpage()
{
    tabpage_T *tp;





    tp = (tabpage_T *)alloc_clear((unsigned)sizeof(tabpage_T));
    if (tp == ((void*)0))
 return ((void*)0);
    tp->tp_ch_used = p_ch;

    return tp;
}
