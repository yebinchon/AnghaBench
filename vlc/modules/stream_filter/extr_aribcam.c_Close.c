
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {TYPE_3__* p_b25; TYPE_4__* p_bcas; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_9__ {int (* release ) (TYPE_4__*) ;} ;
struct TYPE_8__ {int (* release ) (TYPE_3__*) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void Close ( vlc_object_t *p_object )
{
    stream_t *p_stream = (stream_t *)p_object;
    stream_sys_t *p_sys = p_stream->p_sys;

    if ( p_sys->p_bcas )
        p_sys->p_bcas->release( p_sys->p_bcas );

    if ( p_sys->p_b25 )
        p_sys->p_b25->release( p_sys->p_b25 );

    free( p_sys );
}
