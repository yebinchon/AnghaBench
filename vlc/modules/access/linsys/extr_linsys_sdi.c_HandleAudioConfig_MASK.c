#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_8__ {int i_group; int i_pair; int i_delay; int i_rate; int /*<<< orphan*/ * p_es; } ;
typedef  TYPE_1__ sdi_audio_t ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_10__ {TYPE_1__* p_audios; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int MAX_AUDIOS ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 

__attribute__((used)) static void FUNC2( demux_t *p_demux, const uint16_t *p_anc,
                               uint8_t i_data_count, uint8_t i_group )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( i_data_count != 18 )
    {
        FUNC1( p_demux, "malformed audio config for group %u", i_group );
        return;
    }

    for ( int i = 0; i < MAX_AUDIOS; i++ )
    {
        sdi_audio_t *p_audio = &p_sys->p_audios[i];
        if ( p_audio->i_group == i_group && p_audio->p_es == NULL )
        {
            unsigned int i_rate;

            if ( p_audio->i_pair == 2 )
            {
                i_rate = (p_anc[2] & 0xe0) >> 5;
                if ( p_anc[7] & 0x1 )
                {
                    uint32_t i_tmp = ((p_anc[7] & 0x1fe) >> 1)
                                       | ((p_anc[8] & 0x1ff) << 8)
                                       | ((p_anc[9] & 0x1ff) << 17);
                    if ( p_anc[9] & 0x80 )
                        p_audio->i_delay = i_tmp | 0xfc000000;
                    else
                        p_audio->i_delay = i_tmp;
                }
                if ( p_anc[13] & 0x1 )
                    FUNC1( p_demux, "asymetric audio is not supported" );
            }
            else
            {
                i_rate = (p_anc[2] & 0xe) >> 1;
                if ( p_anc[4] & 0x1 )
                {
                    uint32_t i_tmp = ((p_anc[4] & 0x1fe) >> 1)
                                       | ((p_anc[5] & 0x1ff) << 8)
                                       | ((p_anc[6] & 0x1ff) << 17);
                    if ( p_anc[6] & 0x80 )
                        p_audio->i_delay = i_tmp | 0xfc000000;
                    else
                        p_audio->i_delay = i_tmp;
                }
                if ( p_anc[10] & 0x1 )
                    FUNC1( p_demux, "asymetric audio is not supported" );
            }

            switch ( i_rate )
            {
            case 0: p_audio->i_rate = 48000; break;
            case 1: p_audio->i_rate = 44100; break;
            case 2: p_audio->i_rate = 32000; break;
            default:
                FUNC1( p_demux, "unknown rate for audio %u/%u (%u)",
                          i_group, p_sys->p_audios[i].i_pair, i_rate );
                continue;
            }

            if( FUNC0( p_demux, p_audio ) != VLC_SUCCESS )
                return;
        }
    }
}