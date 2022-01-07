
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_10__ {int i_flags; int i_dts; int i_pts; } ;
typedef TYPE_2__ block_t ;
struct TYPE_11__ {int block_flags; int bufv; int fd; } ;
typedef TYPE_3__ access_sys_t ;


 scalar_t__ AccessPoll (TYPE_1__*) ;
 TYPE_2__* GrabVideo (int ,int ,int ) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int vlc_tick_now () ;

__attribute__((used)) static block_t *MMapBlock (stream_t *access, bool *restrict eof)
{
    access_sys_t *sys = access->p_sys;

    if (AccessPoll (access))
        return ((void*)0);

    block_t *block = GrabVideo (VLC_OBJECT(access), sys->fd, sys->bufv);
    if( block != ((void*)0) )
    {
        block->i_pts = block->i_dts = vlc_tick_now();
        block->i_flags |= sys->block_flags;
    }
    (void) eof;
    return block;
}
