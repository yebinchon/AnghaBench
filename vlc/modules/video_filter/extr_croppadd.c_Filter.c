
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_22__ {int i_pixel_pitch; int i_visible_pitch; int i_visible_lines; int i_pitch; int * p_pixels; } ;
typedef TYPE_5__ plane_t ;
struct TYPE_23__ {int i_planes; TYPE_5__* p; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_20__ {int i_visible_width; int i_visible_height; } ;
struct TYPE_21__ {TYPE_3__ video; } ;
struct TYPE_18__ {int i_visible_width; int i_visible_height; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_24__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; TYPE_8__* p_sys; } ;
typedef TYPE_7__ filter_t ;
struct TYPE_25__ {int i_cropleft; int i_cropright; int i_croptop; int i_cropbottom; int i_paddleft; int i_paddtop; } ;
typedef TYPE_8__ filter_sys_t ;


 TYPE_6__* CopyInfoAndRelease (TYPE_6__*,TYPE_6__*) ;
 TYPE_6__* filter_NewPicture (TYPE_7__*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int,int) ;
 int picture_Release (TYPE_6__*) ;

__attribute__((used)) static picture_t *Filter( filter_t *p_filter, picture_t *p_pic )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    picture_t *p_outpic;
    int i_width, i_height, i_xcrop, i_ycrop,
        i_outwidth, i_outheight, i_xpadd, i_ypadd;

    const int p_padd_color[] = { 0x00, 0x80, 0x80, 0xff };

    if( !p_pic ) return ((void*)0);


    p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        picture_Release( p_pic );
        return ((void*)0);
    }

    for( int i_plane = 0; i_plane < p_pic->i_planes; i_plane++ )


    {
        plane_t *p_plane = p_pic->p+i_plane;
        plane_t *p_outplane = p_outpic->p+i_plane;
        uint8_t *p_in = p_plane->p_pixels;
        uint8_t *p_out = p_outplane->p_pixels;
        int i_pixel_pitch = p_plane->i_pixel_pitch;
        int i_padd_color = i_plane > 3 ? p_padd_color[0]
                                       : p_padd_color[i_plane];



        i_width = ( ( p_filter->fmt_in.video.i_visible_width
                          - p_sys->i_cropleft - p_sys->i_cropright )
                        * p_plane->i_visible_pitch )
                      / p_pic->p->i_visible_pitch;
        i_height = ( ( p_filter->fmt_in.video.i_visible_height
                          - p_sys->i_croptop - p_sys->i_cropbottom )
                        * p_plane->i_visible_lines )
                      / p_pic->p->i_visible_lines;
        i_xcrop = ( p_sys->i_cropleft * p_plane->i_visible_pitch)
                      / p_pic->p->i_visible_pitch;
        i_ycrop = ( p_sys->i_croptop * p_plane->i_visible_lines)
                      / p_pic->p->i_visible_lines;
        i_outwidth = ( p_filter->fmt_out.video.i_visible_width
                        * p_outplane->i_visible_pitch )
                      / p_outpic->p->i_visible_pitch;
        i_outheight = ( p_filter->fmt_out.video.i_visible_height
                        * p_outplane->i_visible_lines )
                      / p_outpic->p->i_visible_lines;
        i_xpadd = ( p_sys->i_paddleft * p_outplane->i_visible_pitch )
                      / p_outpic->p->i_visible_pitch;
        i_ypadd = ( p_sys->i_paddtop * p_outplane->i_visible_lines )
                       / p_outpic->p->i_visible_lines;


        p_in += i_ycrop * p_plane->i_pitch;


        memset( p_out, i_padd_color, i_ypadd * p_outplane->i_pitch );
        p_out += i_ypadd * p_outplane->i_pitch;

        for( int i_line = 0; i_line < i_height; i_line++ )
        {
            uint8_t *p_in_next = p_in + p_plane->i_pitch;
            uint8_t *p_out_next = p_out + p_outplane->i_pitch;


            p_in += i_xcrop * i_pixel_pitch;


            memset( p_out, i_padd_color, i_xpadd * i_pixel_pitch );
            p_out += i_xpadd * i_pixel_pitch;


            memcpy( p_out, p_in, i_width * i_pixel_pitch );
            p_out += i_width * i_pixel_pitch;
            p_in += i_width * i_pixel_pitch;


            memset( p_out, i_padd_color,
                        ( i_outwidth - i_xpadd - i_width ) * i_pixel_pitch );


            p_in = p_in_next;
            p_out = p_out_next;
        }


        memset( p_out, i_padd_color,
                 ( i_outheight - i_ypadd - i_height ) * p_outplane->i_pitch );
    }

    return CopyInfoAndRelease( p_outpic, p_pic );
}
