
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int album_cache; int downloader; int network; int local; } ;
typedef TYPE_1__ input_fetcher_t ;


 int FreeCacheEntry ;
 int background_worker_Delete (int ) ;
 int free (TYPE_1__*) ;
 int vlc_dictionary_clear (int *,int ,int *) ;
 int vlc_mutex_destroy (int *) ;

void input_fetcher_Delete( input_fetcher_t* fetcher )
{
    background_worker_Delete( fetcher->local );
    background_worker_Delete( fetcher->network );
    background_worker_Delete( fetcher->downloader );

    vlc_dictionary_clear( &fetcher->album_cache, FreeCacheEntry, ((void*)0) );
    vlc_mutex_destroy( &fetcher->lock );

    free( fetcher );
}
