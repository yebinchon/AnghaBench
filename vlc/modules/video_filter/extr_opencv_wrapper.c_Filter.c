
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int video_format_t ;
struct TYPE_27__ {scalar_t__ i_planes; int format; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_28__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_29__ {scalar_t__ i_wrapper_output; scalar_t__ i_internal_chroma; TYPE_1__* p_proc_image; int p_image; int * p_cv_image; TYPE_4__* p_opencv; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_30__ {int (* pf_video_filter ) (TYPE_4__*,TYPE_1__*) ;} ;


 scalar_t__ CINPUT ;
 int CopyInfoAndRelease (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ NONE ;
 scalar_t__ PROCESSED ;
 int ReleaseImages (TYPE_2__*) ;
 scalar_t__ VINPUT ;
 int VlcPictureToIplImage (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* filter_NewPicture (TYPE_2__*) ;
 TYPE_1__* image_Convert (int ,TYPE_1__*,int *,int *) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int picture_Copy (TYPE_1__*,TYPE_1__*) ;
 int picture_CopyPixels (TYPE_1__*,TYPE_1__*) ;
 int picture_CopyProperties (TYPE_1__*,TYPE_1__*) ;
 int picture_Release (TYPE_1__*) ;
 int stub1 (TYPE_4__*,TYPE_1__*) ;

__attribute__((used)) static picture_t* Filter( filter_t* p_filter, picture_t* p_pic )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    picture_t* p_outpic = filter_NewPicture( p_filter );
    if( p_outpic == ((void*)0) ) {
        msg_Err( p_filter, "couldn't get a p_outpic!" );
        picture_Release( p_pic );
        return ((void*)0);
    }


    if (p_sys->i_wrapper_output == VINPUT)
        picture_Copy( p_outpic, p_pic );

    VlcPictureToIplImage( p_filter, p_pic );


    p_sys->p_opencv->pf_video_filter( p_sys->p_opencv, (picture_t*)&(p_sys->p_cv_image[0]) );

    if(p_sys->i_wrapper_output == PROCESSED) {

        if( (p_sys->p_proc_image) &&
            (p_sys->p_proc_image->i_planes > 0) &&
            (p_sys->i_internal_chroma != CINPUT) ) {


            video_format_t fmt_out = p_pic->format;







            picture_t* p_outpic_tmp = image_Convert(
                        p_sys->p_image,
                        p_sys->p_proc_image,
                        &(p_sys->p_proc_image->format),
                        &fmt_out );

            picture_CopyPixels( p_outpic, p_outpic_tmp );
            CopyInfoAndRelease( p_outpic, p_outpic_tmp );
        } else if( p_sys->i_internal_chroma == CINPUT ) {
            picture_CopyPixels( p_outpic, p_sys->p_proc_image );
            picture_CopyProperties( p_outpic, p_sys->p_proc_image );
        }
    }

    ReleaseImages( p_filter );
    picture_Release( p_pic );


    msg_Dbg( p_filter, "Filter() done" );


    if( p_sys->i_wrapper_output != NONE ) {
        return p_outpic;
    } else {
        picture_Release( p_outpic );
        return ((void*)0);
    }
}
