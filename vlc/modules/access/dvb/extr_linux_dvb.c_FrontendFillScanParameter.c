
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int scan_parameter_t ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_1__ info; } ;
typedef TYPE_2__ frontend_t ;
struct TYPE_10__ {TYPE_2__* p_frontend; } ;
typedef TYPE_3__ dvb_sys_t ;


 scalar_t__ FE_OFDM ;
 scalar_t__ FE_QAM ;
 scalar_t__ FE_QPSK ;
 int ScanParametersDvbC (int *,TYPE_3__*,int *) ;
 int ScanParametersDvbS (int *,TYPE_3__*,int *) ;
 int ScanParametersDvbT (int *,TYPE_3__*,int *) ;
 int VLC_EGENERIC ;
 int msg_Err (int *,char*) ;

int FrontendFillScanParameter( vlc_object_t *p_access, dvb_sys_t *p_sys, scan_parameter_t *p_scan )
{
    const frontend_t *p_frontend = p_sys->p_frontend;

    if( p_frontend->info.type == FE_OFDM )
        return ScanParametersDvbT( p_access, p_sys, p_scan );
    else if( p_frontend->info.type == FE_QAM )
        return ScanParametersDvbC( p_access, p_sys, p_scan );
    else if( p_frontend->info.type == FE_QPSK )
        return ScanParametersDvbS( p_access, p_sys, p_scan );

    msg_Err( p_access, "frontend scanning not supported" );
    return VLC_EGENERIC;
}
