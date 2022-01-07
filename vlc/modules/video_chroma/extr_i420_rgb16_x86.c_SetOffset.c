
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void SetOffset( int i_width, int i_height, int i_pic_width,
                       int i_pic_height, bool *pb_hscale,
                       unsigned int *pi_vscale, int *p_offset )
{



    if( i_pic_width - i_width == 0 )
    {
        *pb_hscale = 0;
    }
    else if( i_pic_width - i_width > 0 )
    {
        int i_scale_count = i_pic_width;

        *pb_hscale = 1;
        for( int i_x = i_width; i_x--; )
        {
            while( (i_scale_count -= i_width) > 0 )
            {
                *p_offset++ = 0;
            }
            *p_offset++ = 1;
            i_scale_count += i_pic_width;
        }
    }
    else
    {
        int i_scale_count = i_pic_width;

        *pb_hscale = 1;
        for( int i_x = i_pic_width; i_x--; )
        {
            *p_offset = 1;
            while( (i_scale_count -= i_pic_width) > 0 )
            {
                *p_offset += 1;
            }
            p_offset++;
            i_scale_count += i_width;
        }
    }




    if( i_pic_height - i_height == 0 )
        *pi_vscale = 0;
    else if( i_pic_height - i_height > 0 )
        *pi_vscale = 1;
    else
        *pi_vscale = -1;
}
