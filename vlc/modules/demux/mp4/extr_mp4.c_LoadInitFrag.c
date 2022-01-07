
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int * p_root; } ;
typedef TYPE_2__ demux_sys_t ;
typedef int MP4_Box_t ;


 int MP4_BoxFree (int *) ;
 int MP4_BoxGet (int *,char*) ;
 int * MP4_BoxGetRoot (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Warn (TYPE_1__*,char*) ;

__attribute__((used)) static int LoadInitFrag( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;


    MP4_Box_t *p_root = MP4_BoxGetRoot( p_demux->s );
    if( p_root == ((void*)0) || !MP4_BoxGet( p_root, "/moov" ) )
    {
        MP4_BoxFree( p_root );
        goto LoadInitFragError;
    }

    p_sys->p_root = p_root;

    return VLC_SUCCESS;

LoadInitFragError:
    msg_Warn( p_demux, "MP4 plugin discarded (not a valid initialization chunk)" );
    return VLC_EGENERIC;
}
