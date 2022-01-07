
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {int i_width; int i_height; int i_chroma; } ;
typedef TYPE_4__ video_format_t ;
struct TYPE_25__ {int i_planes; TYPE_4__ format; } ;
typedef TYPE_5__ picture_t ;
struct TYPE_26__ {TYPE_7__* p_sys; } ;
typedef TYPE_6__ filter_t ;
struct TYPE_22__ {int i_chroma; } ;
struct TYPE_23__ {int i_planes; TYPE_2__ format; } ;
struct TYPE_27__ {int f_scale; scalar_t__ i_internal_chroma; int i_cv_image_size; TYPE_3__ hacked_pic; TYPE_8__* p_proc_image; int * p_cv_image; TYPE_8__* p_to_be_freed; int p_image; } ;
typedef TYPE_7__ filter_sys_t ;
struct TYPE_28__ {int i_planes; TYPE_1__* p; } ;
struct TYPE_21__ {int i_visible_pitch; int i_pixel_pitch; int i_visible_lines; int i_pitch; scalar_t__ p_pixels; } ;
typedef int CvSize ;


 scalar_t__ CINPUT ;
 scalar_t__ GREY ;
 int IPL_DEPTH_8U ;
 scalar_t__ RGB ;
 int VLC_CODEC_I420 ;
 int VLC_CODEC_RGB24 ;
 int abs (int) ;
 int cvCreateImageHeader (int ,int ,int) ;
 int cvSetData (int ,char*,int ) ;
 int cvSize (int,int) ;
 TYPE_8__* filter_NewPicture (TYPE_6__*) ;
 TYPE_8__* image_Convert (int ,TYPE_5__*,TYPE_4__*,TYPE_4__*) ;
 int memset (TYPE_4__*,int ,int) ;
 int msg_Dbg (TYPE_6__*,char*) ;
 int msg_Err (TYPE_6__*,char*) ;
 int picture_Copy (TYPE_8__*,TYPE_5__*) ;

__attribute__((used)) static void VlcPictureToIplImage( filter_t* p_filter, picture_t* p_in )
{
    int planes = p_in->i_planes;

    CvSize sz = cvSize(p_in->format.i_width, p_in->format.i_height);
    video_format_t fmt_out;
    filter_sys_t* p_sys = p_filter->p_sys;

    memset( &fmt_out, 0, sizeof(video_format_t) );


    if ((p_sys->f_scale != 1) || (p_sys->i_internal_chroma != CINPUT))
    {
        fmt_out = p_in->format;


        fmt_out.i_width = p_in->format.i_width * p_sys->f_scale;
        fmt_out.i_height = p_in->format.i_height * p_sys->f_scale;

        if (p_sys->i_internal_chroma == RGB)
        {



            fmt_out.i_chroma = VLC_CODEC_RGB24;
        }
        else if (p_sys->i_internal_chroma == GREY)
        {


            fmt_out.i_chroma = VLC_CODEC_I420;
        }


        p_sys->p_proc_image = image_Convert( p_sys->p_image, p_in,
                                     &(p_in->format), &fmt_out );

        if (!p_sys->p_proc_image)
        {
            msg_Err(p_filter, "can't convert (unsupported formats?), aborting...");
            return;
        }


    }
    else
    {



        p_sys->p_proc_image = filter_NewPicture( p_filter );
        picture_Copy( p_sys->p_proc_image, p_in );
    }
    p_sys->p_to_be_freed = p_sys->p_proc_image;




    planes = p_sys->p_proc_image->i_planes;
    p_sys->i_cv_image_size = planes;
    for( int i = 0; i < planes; i++ )
    {
        sz = cvSize(abs(p_sys->p_proc_image->p[i].i_visible_pitch /
            p_sys->p_proc_image->p[i].i_pixel_pitch),
            abs(p_sys->p_proc_image->p[i].i_visible_lines));

        p_sys->p_cv_image[i] = cvCreateImageHeader(sz, IPL_DEPTH_8U,
            p_sys->p_proc_image->p[i].i_pixel_pitch);

        cvSetData( p_sys->p_cv_image[i],
            (char*)(p_sys->p_proc_image->p[i].p_pixels), p_sys->p_proc_image->p[i].i_pitch );
    }



    p_sys->hacked_pic.i_planes = planes;
    p_sys->hacked_pic.format.i_chroma = fmt_out.i_chroma;


    msg_Dbg( p_filter, "VlcPictureToIplImageRgb() completed" );

}
