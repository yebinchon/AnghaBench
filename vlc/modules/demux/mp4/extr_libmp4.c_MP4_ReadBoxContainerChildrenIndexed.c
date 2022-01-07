
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int stream_t ;
struct TYPE_5__ {scalar_t__ i_size; scalar_t__ i_pos; scalar_t__ const i_type; scalar_t__ i_index; scalar_t__ p_father; } ;
typedef TYPE_1__ MP4_Box_t ;


 scalar_t__ GetDWBE (int *) ;
 TYPE_1__* MP4_ReadBoxRestricted (int *,TYPE_1__*,int *,scalar_t__ const*,int*) ;
 int MP4_Seek (int *,scalar_t__ const) ;
 int assert (int) ;
 int vlc_stream_Read (int *,int *,int) ;
 scalar_t__ vlc_stream_Tell (int *) ;

__attribute__((used)) static int MP4_ReadBoxContainerChildrenIndexed( stream_t *p_stream,
               MP4_Box_t *p_container, const uint32_t stoplist[],
               const uint32_t excludelist[], bool b_indexed )
{


    if( (p_container->i_size || p_container->p_father)
            && ( vlc_stream_Tell( p_stream ) + ((b_indexed)?16:8) >
        (uint64_t)(p_container->i_pos + p_container->i_size) )
      )
    {

        return 0;
    }

    uint64_t i_last_pos = 0;
    const uint64_t i_end = p_container->i_pos + p_container->i_size;
    MP4_Box_t *p_box = ((void*)0);
    bool b_onexclude = 0;
    bool b_continue;
    do
    {
        b_continue = 0;
        if ( p_container->i_size )
        {
            const uint64_t i_tell = vlc_stream_Tell( p_stream );
            if( i_tell + ((b_indexed)?16:8) >= i_end )
                break;
        }

        uint32_t i_index = 0;
        if ( b_indexed )
        {
            uint8_t read[8];
            if ( vlc_stream_Read( p_stream, read, 8 ) < 8 )
                break;
            i_index = GetDWBE(&read[4]);
        }
        b_onexclude = 0;
        if( (p_box = MP4_ReadBoxRestricted( p_stream, p_container, ((void*)0), excludelist, &b_onexclude )) )
        {
            b_continue = 1;
            p_box->i_index = i_index;
            for(size_t i=0; stoplist && stoplist[i]; i++)
            {
                if( p_box->i_type == stoplist[i] )
                    return 1;
            }
        }

        const uint64_t i_tell = vlc_stream_Tell( p_stream );
        if ( p_container->i_size && i_tell >= i_end )
        {
            assert( i_tell == i_end );
            break;
        }

        if ( !p_box )
        {

            if( i_last_pos == i_tell )
                break;
            i_last_pos = i_tell;
            b_continue = 1;
        }

    } while( b_continue );


    if ( !b_onexclude && p_container->i_size )
    {
        const uint64_t i_tell = vlc_stream_Tell( p_stream );
        if ( i_tell != i_end )
            MP4_Seek( p_stream, i_end );
    }

    return 1;
}
