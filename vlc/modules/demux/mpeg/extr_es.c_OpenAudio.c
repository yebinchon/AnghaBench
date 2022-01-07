
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint64_t ;
typedef int demux_t ;
struct TYPE_3__ {scalar_t__ i_codec; int (* pf_probe ) (int *,int *) ;} ;


 int AUDIO_ES ;
 int OpenCommon (int *,int ,TYPE_1__*,int ) ;
 int VLC_EGENERIC ;
 TYPE_1__* p_codecs ;
 int stub1 (int *,int *) ;

__attribute__((used)) static int OpenAudio( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    for( int i = 0; p_codecs[i].i_codec != 0; i++ )
    {
        uint64_t i_offset;
        if( !p_codecs[i].pf_probe( p_demux, &i_offset ) )
            return OpenCommon( p_demux, AUDIO_ES, &p_codecs[i], i_offset );
    }
    return VLC_EGENERIC;
}
