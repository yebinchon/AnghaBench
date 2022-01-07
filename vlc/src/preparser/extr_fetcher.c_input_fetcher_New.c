
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int album_cache; int lock; scalar_t__ downloader; scalar_t__ network; scalar_t__ local; int * owner; } ;
typedef TYPE_1__ input_fetcher_t ;


 int StartDownloader ;
 int StartSearchLocal ;
 int StartSearchNetwork ;
 int WorkerInit (TYPE_1__*,scalar_t__*,int ) ;
 int background_worker_Delete (scalar_t__) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_dictionary_init (int *,int ) ;
 int vlc_mutex_init (int *) ;

input_fetcher_t* input_fetcher_New( vlc_object_t* owner )
{
    input_fetcher_t* fetcher = malloc( sizeof( *fetcher ) );

    if( unlikely( !fetcher ) )
        return ((void*)0);

    fetcher->owner = owner;

    WorkerInit( fetcher, &fetcher->local, StartSearchLocal );
    WorkerInit( fetcher, &fetcher->network, StartSearchNetwork );
    WorkerInit( fetcher, &fetcher->downloader, StartDownloader );

    if( unlikely( !fetcher->local || !fetcher->network || !fetcher->downloader ) )
    {
        if( fetcher->local )
            background_worker_Delete( fetcher->local );

        if( fetcher->network )
            background_worker_Delete( fetcher->network );

        if( fetcher->downloader )
            background_worker_Delete( fetcher->downloader );

        free( fetcher );
        return ((void*)0);
    }

    vlc_mutex_init( &fetcher->lock );
    vlc_dictionary_init( &fetcher->album_cache, 0 );

    return fetcher;
}
