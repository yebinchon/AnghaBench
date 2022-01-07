
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int i_step; int i_max; int i_min; } ;
struct TYPE_10__ {int b_exhaustive; int b_modulation_set; int i_symbolrate; TYPE_1__ frequency; int type; } ;
typedef TYPE_3__ scan_parameter_t ;
struct TYPE_9__ {int caps; int frequency_stepsize; int frequency_max; int frequency_min; } ;
struct TYPE_11__ {TYPE_2__ info; } ;
typedef TYPE_4__ frontend_t ;
struct TYPE_12__ {TYPE_4__* p_frontend; } ;
typedef TYPE_5__ dvb_sys_t ;


 int FE_CAN_QAM_AUTO ;
 int SCAN_DVB_C ;
 int VLC_SUCCESS ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static int ScanParametersDvbC( vlc_object_t *p_access, dvb_sys_t *p_sys, scan_parameter_t *p_scan )
{
    const frontend_t *p_frontend = p_sys->p_frontend;

    p_scan->type = SCAN_DVB_C;
    p_scan->b_exhaustive = 0;


    p_scan->frequency.i_min = p_frontend->info.frequency_min;
    p_scan->frequency.i_max = p_frontend->info.frequency_max;
    p_scan->frequency.i_step = p_frontend->info.frequency_stepsize;


    p_scan->b_modulation_set = ( p_frontend->info.caps & FE_CAN_QAM_AUTO );



    p_scan->i_symbolrate = var_GetInteger( p_access, "dvb-srate" );

    return VLC_SUCCESS;
}
