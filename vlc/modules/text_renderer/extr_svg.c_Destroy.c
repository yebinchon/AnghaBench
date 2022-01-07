
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {struct TYPE_5__* psz_file_template; } ;
typedef TYPE_2__ filter_sys_t ;


 int free (TYPE_2__*) ;
 int rsvg_term () ;

__attribute__((used)) static void Destroy( vlc_object_t *p_this )
{
    filter_t *p_filter = ( filter_t * )p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    rsvg_term();

    free( p_sys->psz_file_template );
    free( p_sys );
}
