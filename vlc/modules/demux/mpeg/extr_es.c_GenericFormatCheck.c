
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GetDWLE (int const*) ;
 int GetWLE (int const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int WAVE_FORMAT_PCM ;

__attribute__((used)) static int GenericFormatCheck( int i_format, const uint8_t *p_head )
{
    if ( i_format == WAVE_FORMAT_PCM )
    {
        if( GetWLE( p_head ) != 2 )
            return VLC_EGENERIC;
        if( GetDWLE( p_head + 2 ) != 44100 )
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
