
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {int f_amp; int f_gamma; int f_beta; int f_alpha; } ;
typedef TYPE_2__ filter_sys_t ;


 int BandsCallback ;
 int PreampCallback ;
 int PresetCallback ;
 int TwoPassCallback ;
 int free (int ) ;
 int var_DelCallback (int *,char*,int ,TYPE_2__*) ;
 int * vlc_object_parent (TYPE_1__*) ;

__attribute__((used)) static void EqzClean( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_object_t *p_aout = vlc_object_parent(p_filter);

    var_DelCallback( p_aout, "equalizer-bands", BandsCallback, p_sys );
    var_DelCallback( p_aout, "equalizer-preset", PresetCallback, p_sys );
    var_DelCallback( p_aout, "equalizer-preamp", PreampCallback, p_sys );
    var_DelCallback( p_aout, "equalizer-2pass", TwoPassCallback, p_sys );

    free( p_sys->f_alpha );
    free( p_sys->f_beta );
    free( p_sys->f_gamma );

    free( p_sys->f_amp );
}
