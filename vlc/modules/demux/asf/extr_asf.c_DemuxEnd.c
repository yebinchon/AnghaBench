
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {TYPE_3__** track; int * meta; int * p_fp; int * p_root; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {struct TYPE_10__* p_fmt; scalar_t__ p_es; } ;
typedef TYPE_3__ asf_track_t ;


 int ASF_FreeObjectRoot (int ,int *) ;
 int FlushQueues (TYPE_1__*) ;
 int MAX_ASF_TRACKS ;
 int es_format_Clean (TYPE_3__*) ;
 int es_out_Del (int ,scalar_t__) ;
 int free (TYPE_3__*) ;
 int vlc_meta_Delete (int *) ;

__attribute__((used)) static void DemuxEnd( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->p_root )
    {
        ASF_FreeObjectRoot( p_demux->s, p_sys->p_root );
        p_sys->p_root = ((void*)0);
        p_sys->p_fp = ((void*)0);
    }
    if( p_sys->meta )
    {
        vlc_meta_Delete( p_sys->meta );
        p_sys->meta = ((void*)0);
    }

    FlushQueues( p_demux );

    for( int i = 0; i < MAX_ASF_TRACKS; i++ )
    {
        asf_track_t *tk = p_sys->track[i];

        if( tk )
        {
            if( tk->p_es )
            {
                es_out_Del( p_demux->out, tk->p_es );
            }
            if ( tk->p_fmt )
            {
                es_format_Clean( tk->p_fmt );
                free( tk->p_fmt );
            }
            free( tk );
        }
        p_sys->track[i] = 0;
    }
}
