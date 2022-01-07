
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct block_extension_t {int b_progressive; int i_nb_fields; int b_top_field_first; scalar_t__ i_aspect; } ;
struct TYPE_7__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int i_vblock_size; int i_width; int i_height; scalar_t__ i_incr; int i_next_vdate; int p_es_video; scalar_t__ i_aspect; scalar_t__ i_forced_aspect; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_9__ {int i_pts; int i_dts; int * p_buffer; } ;
typedef TYPE_3__ block_t ;


 int Unpack01 (int const*,unsigned int,int *,int *,int *) ;
 int Unpack2 (int const*,unsigned int,int *,int *,int *) ;
 int Unpack3 (int const*,unsigned int,int *,int *,int *) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* block_Alloc (int) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int memcpy (int *,struct block_extension_t*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int HandleVideo( demux_t *p_demux, const uint8_t *p_buffer )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_current_picture = block_Alloc( p_sys->i_vblock_size );
    if( unlikely( !p_current_picture ) )
        return VLC_ENOMEM;
    uint8_t *p_y = p_current_picture->p_buffer;
    uint8_t *p_u = p_y + p_sys->i_width * p_sys->i_height;
    uint8_t *p_v = p_u + p_sys->i_width * p_sys->i_height / 4;
    unsigned int i_total_size = p_sys->i_width * 2;
    unsigned int i_current_line;
    struct block_extension_t ext;

    for ( i_current_line = 0; i_current_line < p_sys->i_height;
          i_current_line++ )
    {
        bool b_field = (i_current_line >= p_sys->i_height / 2);
        unsigned int i_field_line = b_field ?
            i_current_line - (p_sys->i_height + 1) / 2 :
            i_current_line;
        unsigned int i_real_line = b_field + i_field_line * 2;
        const uint8_t *p_line = p_buffer + i_current_line * p_sys->i_width * 2;

        if ( !(i_field_line % 2) && !b_field )
            Unpack01( p_line, i_total_size,
                      p_y + p_sys->i_width * i_real_line,
                      p_u + (p_sys->i_width / 2) * (i_real_line / 2),
                      p_v + (p_sys->i_width / 2) * (i_real_line / 2) );
        else if ( !(i_field_line % 2) )
            Unpack01( p_line, i_total_size,
                      p_y + p_sys->i_width * i_real_line,
                      p_u + (p_sys->i_width / 2) * (i_real_line / 2 + 1),
                      p_v + (p_sys->i_width / 2) * (i_real_line / 2 + 1) );
       else if ( !b_field )
            Unpack2( p_line, i_total_size,
                     p_y + p_sys->i_width * i_real_line,
                     p_u + (p_sys->i_width / 2) * (i_real_line / 2 - 1),
                     p_v + (p_sys->i_width / 2) * (i_real_line / 2 - 1) );
       else
            Unpack3( p_line, i_total_size,
                     p_y + p_sys->i_width * i_real_line,
                     p_u + (p_sys->i_width / 2) * (i_real_line / 2),
                     p_v + (p_sys->i_width / 2) * (i_real_line / 2) );
    }


    ext.b_progressive = 0;
    ext.i_nb_fields = 2;
    ext.b_top_field_first = 1;
    ext.i_aspect = p_sys->i_forced_aspect ? p_sys->i_forced_aspect :
                   p_sys->i_aspect;

    memcpy( &p_current_picture->p_buffer[p_sys->i_vblock_size
                                          - sizeof(struct block_extension_t)],
            &ext, sizeof(struct block_extension_t) );

    p_current_picture->i_dts = p_current_picture->i_pts = p_sys->i_next_vdate;
    es_out_Send( p_demux->out, p_sys->p_es_video, p_current_picture );

    es_out_SetPCR( p_demux->out, p_sys->i_next_vdate );
    p_sys->i_next_vdate += p_sys->i_incr;
    return VLC_SUCCESS;
}
