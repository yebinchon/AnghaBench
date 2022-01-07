
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int * f; } ;
typedef TYPE_2__ stream_sys_t ;


 int VLC_SUCCESS ;
 int assert (int *) ;
 int fclose (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static int Stop( stream_t *s )
{
    stream_sys_t *p_sys = s->p_sys;

    assert( p_sys->f );

    msg_Dbg( s, "Recording completed" );
    fclose( p_sys->f );
    p_sys->f = ((void*)0);
    return VLC_SUCCESS;
}
