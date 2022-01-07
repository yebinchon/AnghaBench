
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_s; } ;


 int FALSE ;
 int TRUE ;
 int bkc_flags ;
 int check_cedit () ;
 int cmp_flags ;
 int compile_cap_prog (int ) ;
 TYPE_1__* curwin ;
 int dy_flags ;
 int fdo_flags ;
 int init_chartab () ;
 int opt_strings_flags (int ,int ,int *,int ) ;
 int p_bkc ;
 int p_bkc_values ;
 int p_cmp ;
 int p_cmp_values ;
 int p_dy ;
 int p_dy_values ;
 int p_fdo ;
 int p_fdo_values ;
 int p_ssop ;
 int p_ssop_values ;
 int p_tbis ;
 int p_tbis_values ;
 int p_toolbar ;
 int p_toolbar_values ;
 int p_ttym ;
 int p_ttym_values ;
 int p_ve ;
 int p_ve_values ;
 int p_vop ;
 int spell_check_msm () ;
 int spell_check_sps () ;
 int ssop_flags ;
 int tbis_flags ;
 int toolbar_flags ;
 int ttym_flags ;
 int ve_flags ;
 int vop_flags ;

__attribute__((used)) static void
didset_options()
{

    (void)init_chartab();




    (void)opt_strings_flags(p_bkc, p_bkc_values, &bkc_flags, TRUE);







    (void)opt_strings_flags(p_dy, p_dy_values, &dy_flags, TRUE);
}
