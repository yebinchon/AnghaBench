
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int pf_control; int pf_seek; int pf_read; TYPE_3__* p_sys; TYPE_1__* s; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_7__ {int * f; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_5__ {int * pf_readdir; } ;


 int Control ;
 int Read ;
 int Seek ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* malloc (int) ;

__attribute__((used)) static int Open ( vlc_object_t *p_this )
{
    stream_t *s = (stream_t*)p_this;
    stream_sys_t *p_sys;

    if( s->s->pf_readdir != ((void*)0) )
        return VLC_EGENERIC;


    s->p_sys = p_sys = malloc( sizeof( *p_sys ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->f = ((void*)0);


    s->pf_read = Read;
    s->pf_seek = Seek;
    s->pf_control = Control;

    return VLC_SUCCESS;
}
