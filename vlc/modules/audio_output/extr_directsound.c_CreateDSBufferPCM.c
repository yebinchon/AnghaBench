
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
typedef int aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateDSBuffer (int *,int *,int ,int,unsigned int,int,int) ;
 scalar_t__ DS_OK ;
 int VLC_CODEC_FL32 ;
 int VLC_CODEC_S16N ;
 scalar_t__ var_GetBool (int *,char*) ;
 unsigned int vlc_popcount (int) ;

__attribute__((used)) static HRESULT CreateDSBufferPCM( vlc_object_t *obj, aout_stream_sys_t *sys,
                                  vlc_fourcc_t *i_format, int i_channels,
                                  int i_rate, bool b_probe )
{
    HRESULT hr;
    unsigned i_nb_channels = vlc_popcount( i_channels );

    if( var_GetBool( obj, "directx-audio-float32" ) )
    {
        hr = CreateDSBuffer( obj, sys, VLC_CODEC_FL32, i_channels,
                             i_nb_channels, i_rate, b_probe );
        if( hr == DS_OK )
        {
            *i_format = VLC_CODEC_FL32;
            return DS_OK;
        }
    }

    hr = CreateDSBuffer( obj, sys, VLC_CODEC_S16N, i_channels, i_nb_channels,
                         i_rate, b_probe );
    if( hr == DS_OK )
    {
        *i_format = VLC_CODEC_S16N;
        return DS_OK;
    }

    return hr;
}
