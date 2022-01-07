
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct background_worker_config {int pf_hold; int pf_release; int pf_stop; int pf_probe; int pf_start; int max_threads; int default_timeout; } ;
struct TYPE_7__ {int fetcher; int deactivated; int * owner; int worker; } ;
typedef TYPE_1__ input_preparser_t ;


 int PreparserCloseInput ;
 int PreparserOpenInput ;
 int PreparserProbeInput ;
 int ReqHoldVoid ;
 int ReqReleaseVoid ;
 int VLC_TICK_FROM_MS (int ) ;
 int atomic_init (int *,int) ;
 int background_worker_New (TYPE_1__*,struct background_worker_config*) ;
 int free (TYPE_1__*) ;
 int input_fetcher_New (int *) ;
 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int msg_Warn (int *,char*) ;
 scalar_t__ unlikely (int) ;
 int var_InheritInteger (int *,char*) ;

input_preparser_t* input_preparser_New( vlc_object_t *parent )
{
    input_preparser_t* preparser = malloc( sizeof *preparser );

    struct background_worker_config conf = {
        .default_timeout = VLC_TICK_FROM_MS(var_InheritInteger( parent, "preparse-timeout" )),
        .max_threads = var_InheritInteger( parent, "preparse-threads" ),
        .pf_start = PreparserOpenInput,
        .pf_probe = PreparserProbeInput,
        .pf_stop = PreparserCloseInput,
        .pf_release = ReqReleaseVoid,
        .pf_hold = ReqHoldVoid
    };


    if( likely( preparser ) )
        preparser->worker = background_worker_New( preparser, &conf );

    if( unlikely( !preparser || !preparser->worker ) )
    {
        free( preparser );
        return ((void*)0);
    }

    preparser->owner = parent;
    preparser->fetcher = input_fetcher_New( parent );
    atomic_init( &preparser->deactivated, 0 );

    if( unlikely( !preparser->fetcher ) )
        msg_Warn( parent, "unable to create art fetcher" );

    return preparser;
}
