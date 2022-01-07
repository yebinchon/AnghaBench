
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_version; int * cdtpid; int * tdtpid; int * eitpid; int handle; } ;
typedef TYPE_1__ ts_si_t ;
typedef int demux_t ;


 int free (TYPE_1__*) ;
 int handle_Init (int *,int *) ;
 TYPE_1__* malloc (int) ;

ts_si_t *ts_si_New( demux_t *p_demux )
{
    ts_si_t *si = malloc( sizeof( ts_si_t ) );
    if( !si )
        return ((void*)0);

    if( !handle_Init( p_demux, &si->handle ) )
    {
        free( si );
        return ((void*)0);
    }

    si->i_version = -1;
    si->eitpid = ((void*)0);
    si->tdtpid = ((void*)0);
    si->cdtpid = ((void*)0);

    return si;
}
