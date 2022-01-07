
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_format_t ;
struct TYPE_5__ {int * p_picture; int fmt; } ;
typedef TYPE_1__ subpicture_region_private_t ;


 scalar_t__ VLC_SUCCESS ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ video_format_Copy (int *,int *) ;

subpicture_region_private_t *subpicture_region_private_New( video_format_t *p_fmt )
{
    subpicture_region_private_t *p_private = malloc( sizeof(*p_private) );

    if( !p_private )
        return ((void*)0);

    if ( video_format_Copy( &p_private->fmt, p_fmt ) != VLC_SUCCESS )
    {
        free( p_private );
        return ((void*)0);
    }

    p_private->p_picture = ((void*)0);
    return p_private;
}
