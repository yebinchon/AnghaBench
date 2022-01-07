
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_8__ {TYPE_3__* p_opencv; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_9__ {int p_module; } ;


 int ReleaseImages (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int module_unneed (TYPE_3__*,int ) ;
 int vlc_object_delete (TYPE_3__*) ;

__attribute__((used)) static void Destroy( vlc_object_t *p_this )
{
    filter_t* p_filter = (filter_t*)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    ReleaseImages( p_filter );


    module_unneed( p_sys->p_opencv, p_sys->p_opencv->p_module );
    vlc_object_delete(p_sys->p_opencv);

    free( p_sys );
}
