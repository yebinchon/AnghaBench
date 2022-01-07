
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {scalar_t__ p_avc1394; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ AVC1394_VCR_OPERAND_PLAY_FORWARD_PAUSE ;
 scalar_t__ avc1394_vcr_is_playing (scalar_t__,int) ;
 int avc1394_vcr_is_recording (scalar_t__,int) ;
 int avc1394_vcr_pause (scalar_t__,int) ;

__attribute__((used)) static int AVCPause( stream_t *p_access, int phyID )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->p_avc1394 && phyID >= 0 )
    {
        if( !avc1394_vcr_is_recording( p_sys->p_avc1394, phyID ) &&
            ( avc1394_vcr_is_playing( p_sys->p_avc1394, phyID ) != AVC1394_VCR_OPERAND_PLAY_FORWARD_PAUSE ) )
                avc1394_vcr_pause( p_sys->p_avc1394, phyID );
    }
    return 0;
}
