
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_version; int p_ctx; int * p_eas_es; int eit; int handle; } ;
typedef TYPE_1__ ts_psip_t ;
typedef int demux_t ;


 int ARRAY_INIT (int ) ;
 int free (TYPE_1__*) ;
 int handle_Init (int *,int *) ;
 TYPE_1__* malloc (int) ;
 int ts_psip_Del (int *,TYPE_1__*) ;
 int ts_psip_context_New () ;

ts_psip_t *ts_psip_New( demux_t *p_demux )
{
    ts_psip_t *psip = malloc( sizeof( ts_psip_t ) );
    if( !psip )
        return ((void*)0);

    if( !handle_Init( p_demux, &psip->handle ) )
    {
        free( psip );
        return ((void*)0);
    }

    ARRAY_INIT( psip->eit );
    psip->i_version = -1;
    psip->p_eas_es = ((void*)0);
    psip->p_ctx = ts_psip_context_New();
    if( !psip->p_ctx )
    {
        ts_psip_Del( p_demux, psip );
        psip = ((void*)0);
    }

    return psip;
}
