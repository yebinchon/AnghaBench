
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fmd_hdl_t ;
struct TYPE_3__ {scalar_t__ ci_state; } ;
typedef TYPE_1__ fmd_case_t ;


 int FMD_B_FALSE ;
 int FMD_B_TRUE ;
 scalar_t__ FMD_CASE_SOLVED ;

int
fmd_case_solved(fmd_hdl_t *hdl, fmd_case_t *cp)
{
 return ((cp->ci_state >= FMD_CASE_SOLVED) ? FMD_B_TRUE : FMD_B_FALSE);
}
