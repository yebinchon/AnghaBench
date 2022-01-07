
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int* pi_offset; int* pi_alpha; int b_auto_crop; unsigned int i_y_top_offset; unsigned int i_y_bottom_offset; int** pi_yuv; int b_palette; int * p_data; } ;
typedef TYPE_1__ subpicture_data_t ;
struct TYPE_12__ {unsigned int i_width; unsigned int i_height; } ;
typedef TYPE_2__ spu_properties_t ;
struct TYPE_13__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_14__ {unsigned int i_spu_size; int * buffer; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_15__ {unsigned int i_height; unsigned int i_y; int i_x; int i_width; } ;


 unsigned int AddNibble (unsigned int,int *,unsigned int*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (TYPE_3__*,char*,int,int,int,...) ;
 int msg_Err (TYPE_3__*,char*,...) ;
 TYPE_5__* p_spu ;

__attribute__((used)) static int ParseRLE( decoder_t *p_dec,
                     subpicture_data_t *p_spu_data,
                     const spu_properties_t *p_spu_properties )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    const unsigned int i_width = p_spu_properties->i_width;
    const unsigned int i_height = p_spu_properties->i_height;
    unsigned int i_x, i_y;

    uint16_t *p_dest = p_spu_data->p_data;


    unsigned int i_id = 0;
    unsigned int pi_table[ 2 ];
    unsigned int *pi_offset;


    bool b_empty_top = 1;
    unsigned int i_skipped_top = 0, i_skipped_bottom = 0;
    unsigned int i_transparent_code = 0;


    int i_border = -1;
    int stats[4]; stats[0] = stats[1] = stats[2] = stats[3] = 0;

    pi_table[ 0 ] = p_spu_data->pi_offset[ 0 ] << 1;
    pi_table[ 1 ] = p_spu_data->pi_offset[ 1 ] << 1;

    for( i_y = 0 ; i_y < i_height ; i_y++ )
    {
        unsigned int i_code;
        pi_offset = pi_table + i_id;

        for( i_x = 0 ; i_x < i_width ; i_x += i_code >> 2 )
        {
            i_code = 0;
            for( unsigned int i_min = 1; i_min <= 0x40 && i_code < i_min; i_min <<= 2 )
            {
                if( (*pi_offset >> 1) >= p_sys->i_spu_size )
                {
                    msg_Err( p_dec, "out of bounds while reading rle" );
                    return VLC_EGENERIC;
                }
                i_code = AddNibble( i_code, &p_sys->buffer[4], pi_offset );
            }
            if( i_code < 0x0004 )
            {


                i_code |= ( i_width - i_x ) << 2;
            }

            if( ( (i_code >> 2) + i_x + i_y * i_width ) > i_height * i_width )
            {
                msg_Err( p_dec, "out of bounds, %i at (%i,%i) is out of %ix%i",
                         i_code >> 2, i_x, i_y, i_width, i_height );
                return VLC_EGENERIC;
            }


            if( p_spu_data->pi_alpha[ i_code & 0x3 ] != 0x00 )
            {
                i_border = i_code & 0x3;
                stats[i_border] += i_code >> 2;
            }


            if( p_spu_data->b_auto_crop )
            {
                if( !i_y )
                {



                    if( (i_code >> 2) == i_width &&
                        p_spu_data->pi_alpha[ i_code & 0x3 ] == 0x00 )
                    {
                        i_transparent_code = i_code;
                    }
                    else
                    {
                        p_spu_data->b_auto_crop = 0;
                    }
                }

                if( i_code == i_transparent_code )
                {
                    if( b_empty_top )
                    {

                      i_skipped_top++;
                    }
                    else
                    {


                      *p_dest++ = i_code;
                      i_skipped_bottom++;
                    }
                }
                else
                {

                    *p_dest++ = i_code;


                    b_empty_top = 0;
                    i_skipped_bottom = 0;
                }
            }
            else
            {
                *p_dest++ = i_code;
            }
        }


        if( i_x > i_width )
        {
            msg_Err( p_dec, "i_x overflowed, %i > %i", i_x, i_width );
            return VLC_EGENERIC;
        }


        if( *pi_offset & 0x1 )
        {
            (*pi_offset)++;
        }


        i_id = ~i_id & 0x1;
    }


    if( i_y < i_height )
    {
        msg_Err( p_dec, "padding bytes found in RLE sequence" );
        msg_Err( p_dec, "send mail to <sam@zoy.org> if you "
                        "want to help debugging this" );


        while( i_y < i_height )
        {
            *p_dest++ = i_width << 2;
            i_y++;
        }

        return VLC_EGENERIC;
    }







    if( i_skipped_top || i_skipped_bottom )
    {




        p_spu_data->i_y_top_offset = i_skipped_top;
        p_spu_data->i_y_bottom_offset = i_skipped_bottom;




    }


    if( !p_spu_data->b_palette )
    {
        int i, i_inner = -1, i_shade = -1;


        if( i_border != -1 )
        {
            p_spu_data->pi_yuv[i_border][0] = 0x00;
            p_spu_data->pi_yuv[i_border][1] = 0x80;
            p_spu_data->pi_yuv[i_border][2] = 0x80;
            stats[i_border] = 0;
        }


        for( i = 0 ; i < 4 && i_inner == -1 ; i++ )
        {
            if( stats[i] )
            {
                i_inner = i;
            }
        }

        for( ; i < 4 && i_shade == -1 ; i++ )
        {
            if( stats[i] )
            {
                if( stats[i] > stats[i_inner] )
                {
                    i_shade = i_inner;
                    i_inner = i;
                }
                else
                {
                    i_shade = i;
                }
            }
        }


        if( i_inner != -1 )
        {
            p_spu_data->pi_yuv[i_inner][0] = 0xff;
            p_spu_data->pi_yuv[i_inner][1] = 0x80;
            p_spu_data->pi_yuv[i_inner][2] = 0x80;
        }


        if( i_shade != -1 )
        {
            p_spu_data->pi_yuv[i_shade][0] = 0x80;
            p_spu_data->pi_yuv[i_shade][1] = 0x80;
            p_spu_data->pi_yuv[i_shade][2] = 0x80;
        }





    }

    return VLC_SUCCESS;
}
