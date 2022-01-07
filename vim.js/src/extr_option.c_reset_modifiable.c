
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_4__ {void* b_p_ma; } ;
struct TYPE_3__ {void** def_val; } ;


 void* FALSE ;
 size_t VI_DEFAULT ;
 TYPE_2__* curbuf ;
 int findoption (int *) ;
 TYPE_1__* options ;
 void* p_ma ;

void
reset_modifiable()
{
    int opt_idx;

    curbuf->b_p_ma = FALSE;
    p_ma = FALSE;
    opt_idx = findoption((char_u *)"ma");
    if (opt_idx >= 0)
 options[opt_idx].def_val[VI_DEFAULT] = FALSE;
}
