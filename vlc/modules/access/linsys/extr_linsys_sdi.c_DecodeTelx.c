
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int line; int * data; } ;
typedef TYPE_1__ vbi_sliced ;
typedef int uint8_t ;
struct TYPE_10__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_11__ {int i_telx_count; int p_es_telx; int i_next_date; int p_telx_buffer; int rd_telx; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_12__ {int* p_buffer; int i_pts; int i_dts; } ;
typedef TYPE_4__ block_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_4__* block_Alloc (int) ;
 int es_out_Send (int ,int ,TYPE_4__*) ;
 int memset (int*,int,int) ;
 scalar_t__ unlikely (int) ;
 int vbi_raw_decode (int *,int ,TYPE_1__*) ;
 int vbi_rev8 (int ) ;

__attribute__((used)) static int DecodeTelx( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    vbi_sliced p_sliced[p_sys->i_telx_count * 2];
    int i_nb_slices = vbi_raw_decode( &p_sys->rd_telx, p_sys->p_telx_buffer,
                                      p_sliced );

    if ( i_nb_slices )
    {

        int i_nb_slices_rounded = 3 + (i_nb_slices / 4) * 4;
        int i;
        uint8_t *p;
        block_t *p_block = block_Alloc( 1 + i_nb_slices_rounded * 46 );
        if( unlikely( !p_block ) )
            return VLC_ENOMEM;
        p_block->p_buffer[0] = 0x10;
        p = p_block->p_buffer + 1;

        for ( i = 0; i < i_nb_slices; i++ )
        {
            int i_line = p_sliced[i].line;
            p[0] = 0x3;
            p[1] = 0x2c;

            p[2] = 0xc0 | (i_line > 313 ? 0 : 0x20) | (i_line % 313);
            p[3] = 0xe4;
            for ( int j = 0; j < 42; j++ )
                p[4 + j] = vbi_rev8( p_sliced[i].data[j] );
            p += 46;
        }


        for ( ; i < i_nb_slices_rounded; i++ )
        {
            p[0] = 0xff;
            p[1] = 0x2c;
            memset( p + 2, 0xff, 44 );
            p += 46;
        }

        p_block->i_dts = p_block->i_pts = p_sys->i_next_date;
        es_out_Send( p_demux->out, p_sys->p_es_telx, p_block );
    }
    return VLC_SUCCESS;
}
