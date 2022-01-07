
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {scalar_t__ p_avc1394; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ AVC1394_VCR_OPERAND_PLAY_FORWARD ;
 scalar_t__ avc1394_vcr_is_playing (scalar_t__,int) ;
 int avc1394_vcr_is_recording (scalar_t__,int) ;
 int avc1394_vcr_play (scalar_t__,int) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static int AVCPlay( stream_t *p_access, int phyID )
{
    access_sys_t *p_sys = p_access->p_sys;

    msg_Dbg( p_access, "send play command over Digital Video control channel" );

    if( p_sys->p_avc1394 && phyID >= 0 )
    {
        if( !avc1394_vcr_is_recording( p_sys->p_avc1394, phyID ) &&
            avc1394_vcr_is_playing( p_sys->p_avc1394, phyID ) != AVC1394_VCR_OPERAND_PLAY_FORWARD )
                avc1394_vcr_play( p_sys->p_avc1394, phyID );
    }
    return 0;
}
