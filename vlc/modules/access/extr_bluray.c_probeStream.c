
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int STREAM_CAN_SEEK ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_stream_Control (int ,int ,int*) ;
 size_t vlc_stream_Peek (int ,scalar_t__ const**,int) ;

__attribute__((used)) static int probeStream(demux_t *p_demux)
{

    bool b_canseek = 0;
    vlc_stream_Control( p_demux->s, STREAM_CAN_SEEK, &b_canseek );
    if (!b_canseek) {
        return VLC_EGENERIC;
    }


    size_t i_peek;
    const uint8_t *p_peek;
    i_peek = vlc_stream_Peek( p_demux->s, &p_peek, 2048 );
    if( i_peek != 2048 ) {
        return VLC_EGENERIC;
    }
    while (i_peek > 0) {
        if (p_peek[ --i_peek ]) {
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
