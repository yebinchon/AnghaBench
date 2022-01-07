
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_7__ {int i_version; int b_windowed; int i_width; int i_height; int i_x; int i_max_x; int i_y; int i_max_y; } ;
struct TYPE_9__ {TYPE_1__ display; } ;
typedef TYPE_3__ decoder_sys_t ;
typedef int bs_t ;


 int bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 int msg_Dbg (TYPE_2__*,char*,...) ;
 int msg_Err (TYPE_2__*,char*,int,int) ;

__attribute__((used)) static void decode_display_definition( decoder_t *p_dec, bs_t *s, uint16_t i_segment_length )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint16_t i_processed_length = 40;
    int i_version;

    i_version = bs_read( s, 4 );


    if( p_sys->display.i_version == i_version )
    {

        bs_skip( s, 8*i_segment_length - 4 );
        return;
    }






    p_sys->display.i_version = i_version;
    p_sys->display.b_windowed = bs_read( s, 1 );
    bs_skip( s, 3 );
    p_sys->display.i_width = bs_read( s, 16 )+1;
    p_sys->display.i_height = bs_read( s, 16 )+1;

    if( p_sys->display.b_windowed )
    {




        p_sys->display.i_x = bs_read( s, 16 );
        p_sys->display.i_max_x = bs_read( s, 16 );
        p_sys->display.i_y = bs_read( s, 16 );
        p_sys->display.i_max_y = bs_read( s, 16 );
        i_processed_length += 64;
    }
    else
    {


        p_sys->display.i_x = 0;
        p_sys->display.i_max_x = p_sys->display.i_width-1;
        p_sys->display.i_y = 0;
        p_sys->display.i_max_y = p_sys->display.i_height-1;
    }

    if( i_processed_length != i_segment_length*8 )
    {
        msg_Err( p_dec, "processed length %d bytes != segment length %d bytes",
                 i_processed_length / 8 , i_segment_length );
    }
}
