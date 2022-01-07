
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;


 int OPT_FREE ;
 int P_VIM ;
 int P_VI_DEF ;
 int didset_options () ;
 int istermoption (TYPE_1__*) ;
 TYPE_1__* options ;
 scalar_t__ p_cp ;
 int set_option_default (int,int ,scalar_t__) ;

__attribute__((used)) static void
compatible_set()
{
    int opt_idx;

    for (opt_idx = 0; !istermoption(&options[opt_idx]); opt_idx++)
 if ( ((options[opt_idx].flags & P_VIM) && p_cp)
  || (!(options[opt_idx].flags & P_VI_DEF) && !p_cp))
     set_option_default(opt_idx, OPT_FREE, p_cp);
    didset_options();
}
