
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_5__ {scalar_t__ p_pic; } ;
struct TYPE_7__ {struct TYPE_7__* psz_path; struct TYPE_7__* psz_prefix; struct TYPE_7__* psz_format; TYPE_1__ scene; int p_image; } ;
typedef TYPE_3__ filter_sys_t ;


 int free (TYPE_3__*) ;
 int image_HandlerDelete (int ) ;
 int picture_Release (scalar_t__) ;

__attribute__((used)) static void Destroy( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    image_HandlerDelete( p_sys->p_image );

    if( p_sys->scene.p_pic )
        picture_Release( p_sys->scene.p_pic );
    free( p_sys->psz_format );
    free( p_sys->psz_prefix );
    free( p_sys->psz_path );
    free( p_sys );
}
