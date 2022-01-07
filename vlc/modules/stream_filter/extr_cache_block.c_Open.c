
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int pf_control; int pf_seek; int pf_read; TYPE_3__* p_sys; TYPE_1__* s; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_11__ {int cache; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_9__ {int * pf_block; } ;


 int AStreamControl ;
 int AStreamPrebufferBlock (TYPE_2__*) ;
 int AStreamReadBlock ;
 int AStreamSeekBlock ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int block_BytestreamInit (int *) ;
 scalar_t__ block_BytestreamRemaining (int *) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    stream_t *s = (stream_t *)obj;

    if (s->s->pf_block == ((void*)0))
        return VLC_EGENERIC;

    stream_sys_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    msg_Dbg(s, "Using block method for AStream*");


    block_BytestreamInit( &sys->cache );

    s->p_sys = sys;

    AStreamPrebufferBlock(s);

    if (block_BytestreamRemaining( &sys->cache ) <= 0)
    {
        msg_Err(s, "cannot pre fill buffer");
        free(sys);
        return VLC_EGENERIC;
    }

    s->pf_read = AStreamReadBlock;
    s->pf_seek = AStreamSeekBlock;
    s->pf_control = AStreamControl;
    return VLC_SUCCESS;
}
