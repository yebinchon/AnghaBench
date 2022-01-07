
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int * p_to_be_freed; scalar_t__ i_cv_image_size; int ** p_cv_image; } ;
typedef TYPE_2__ filter_sys_t ;


 int VOUT_MAX_PLANES ;
 int cvReleaseImageHeader (int **) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int picture_Release (int *) ;

__attribute__((used)) static void ReleaseImages( filter_t* p_filter )
{
    filter_sys_t* p_sys = p_filter->p_sys;

    for( int i = 0; i < VOUT_MAX_PLANES; i++ )
    {
        if (p_sys->p_cv_image[i] != ((void*)0))
        {
            cvReleaseImageHeader(&(p_sys->p_cv_image[i]));
            p_sys->p_cv_image[i] = ((void*)0);
        }
    }
    p_sys->i_cv_image_size = 0;


    if (p_sys->p_to_be_freed)
    {
        picture_Release( p_sys->p_to_be_freed );
        p_sys->p_to_be_freed = ((void*)0);
    }


    msg_Dbg( p_filter, "images released" );

}
