
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memcmp (int const*,char*,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Read (int ,int *,int) ;

__attribute__((used)) static int ReSynch( demux_t *p_demux )
{
    for( ;; )
    {
        const uint8_t *p_peek;
        int i_peek = vlc_stream_Peek( p_demux->s, &p_peek, 1024 );
        if( i_peek < 8 )
            break;

        int i_skip = 0;

        while( i_skip < i_peek - 4 )
        {
            if( !memcmp( p_peek, "NSVf", 4 )
             || !memcmp( p_peek, "NSVs", 4 ) )
            {
                if( i_skip > 0
                 && vlc_stream_Read( p_demux->s, ((void*)0), i_skip ) < i_skip )
                    return VLC_EGENERIC;
                return VLC_SUCCESS;
            }
            p_peek++;
            i_skip++;
        }

        if( vlc_stream_Read( p_demux->s, ((void*)0), i_skip ) < i_skip )
            break;
    }
    return VLC_EGENERIC;
}
