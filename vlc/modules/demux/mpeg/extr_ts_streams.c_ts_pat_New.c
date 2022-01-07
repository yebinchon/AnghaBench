
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_version; int i_ts_id; int b_generated; int programs; int handle; } ;
typedef TYPE_1__ ts_pat_t ;
typedef int demux_t ;


 int ARRAY_INIT (int ) ;
 int free (TYPE_1__*) ;
 int handle_Init (int *,int *) ;
 TYPE_1__* malloc (int) ;

ts_pat_t *ts_pat_New( demux_t *p_demux )
{
    ts_pat_t *pat = malloc( sizeof( ts_pat_t ) );
    if( !pat )
        return ((void*)0);

    if( !handle_Init( p_demux, &pat->handle ) )
    {
        free( pat );
        return ((void*)0);
    }

    pat->i_version = -1;
    pat->i_ts_id = -1;
    pat->b_generated = 0;
    ARRAY_INIT( pat->programs );

    return pat;
}
