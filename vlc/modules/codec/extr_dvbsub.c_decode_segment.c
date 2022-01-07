
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_12__ {int i_id; int i_ancillary_id; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int bs_t ;
 int bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 int decode_clut (TYPE_1__*,int *,int) ;
 int decode_display_definition (TYPE_1__*,int *,int) ;
 int decode_object (TYPE_1__*,int *,int) ;
 int decode_page_composition (TYPE_1__*,int *,int) ;
 int decode_region_composition (TYPE_1__*,int *,int) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int msg_Warn (TYPE_1__*,char*,int) ;

__attribute__((used)) static void decode_segment( decoder_t *p_dec, bs_t *s )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    int i_type;
    int i_page_id;
    int i_size;





    i_type = bs_read( s, 8 );


    i_page_id = bs_read( s, 16 );


    i_size = bs_read( s, 16 );

    if( ( i_page_id != p_sys->i_id ) &&
        ( i_page_id != p_sys->i_ancillary_id ) )
    {




        bs_skip( s, 8 * i_size );
        return;
    }

    if( ( p_sys->i_ancillary_id != p_sys->i_id ) &&
        ( i_type == 130 ) &&
        ( i_page_id == p_sys->i_ancillary_id ) )
    {



        bs_skip( s, 8 * i_size );
        return;
    }
    switch( i_type )
    {
    case 130:



        decode_page_composition( p_dec, s, i_size );
        break;

    case 129:



        decode_region_composition( p_dec, s, i_size );
        break;

    case 134:



        decode_clut( p_dec, s, i_size );
        break;

    case 131:



        decode_object( p_dec, s, i_size );
        break;

    case 133:



        decode_display_definition( p_dec, s, i_size );
        break;

    case 132:



        bs_skip( s, 8 * i_size );
        break;

    case 128:



        bs_skip( s, 8 * i_size );
        break;

    default:
        msg_Warn( p_dec, "unsupported segment type: (%04x)", i_type );
        bs_skip( s, 8 * i_size );
        break;
    }
}
