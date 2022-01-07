
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int block_t ;
struct TYPE_5__ {int lock; int * p_frame; } ;
typedef TYPE_2__ access_sys_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static block_t *Block( stream_t *p_access, bool *restrict eof )
{
    access_sys_t *p_sys = p_access->p_sys;
    block_t *p_block = ((void*)0);

    vlc_mutex_lock( &p_sys->lock );
    p_block = p_sys->p_frame;

    p_sys->p_frame = ((void*)0);
    vlc_mutex_unlock( &p_sys->lock );

    (void) eof;
    return p_block;
}
