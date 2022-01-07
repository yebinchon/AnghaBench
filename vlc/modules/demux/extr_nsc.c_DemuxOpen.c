
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_2__ {int pf_control; int pf_demux; int s; } ;
typedef TYPE_1__ demux_t ;


 int Control ;
 int Demux ;
 int MAX_LINE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int vlc_stream_Peek (int ,int const**,int ) ;

__attribute__((used)) static int DemuxOpen( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    const uint8_t *p_peek;
    int i_size;


    i_size = vlc_stream_Peek( p_demux->s, &p_peek, MAX_LINE );
    i_size -= sizeof("NSC Format Version=") - 1;

    if ( i_size > 0 )
    {
        while ( i_size && strncasecmp( (char *)p_peek, "NSC Format Version=",
                                       (int) sizeof("NSC Format Version=") - 1 ) )
        {
            p_peek++;
            i_size--;
        }
        if ( !strncasecmp( (char *)p_peek, "NSC Format Version=",
                           (int) sizeof("NSC Format Version=") -1 ) )
        {
            p_demux->pf_demux = Demux;
            p_demux->pf_control = Control;
            return VLC_SUCCESS;
        }
    }
    return VLC_EGENERIC;
}
