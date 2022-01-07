
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct fetcher_request {int * item; } ;
typedef int input_item_t ;
struct TYPE_7__ {int downloader; } ;
typedef TYPE_1__ input_fetcher_t ;


 int AddAlbumCache (TYPE_1__*,int *,int) ;
 int CheckArt (int *) ;
 scalar_t__ CheckMeta (int *) ;
 scalar_t__ InvokeModule (TYPE_1__*,int *,int,char*) ;
 int ReadAlbumCache (TYPE_1__*,int *) ;
 int SearchArt (TYPE_1__*,int *,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int background_worker_Push (int ,struct fetcher_request*,int *,int ) ;
 int input_FindArtInCache (int *) ;
 int input_FindArtInCacheUsingItemUID (int *) ;

__attribute__((used)) static int SearchByScope( input_fetcher_t* fetcher,
    struct fetcher_request* req, int scope )
{
    input_item_t* item = req->item;

    if( CheckMeta( item ) &&
        InvokeModule( fetcher, req->item, scope, "meta fetcher" ) )
    {
        return VLC_EGENERIC;
    }

    if( ! CheckArt( item ) ||
        ! ReadAlbumCache( fetcher, item ) ||
        ! input_FindArtInCacheUsingItemUID( item ) ||
        ! input_FindArtInCache( item ) ||
        ! SearchArt( fetcher, item, scope ) )
    {
        AddAlbumCache( fetcher, req->item, 0 );
        if( !background_worker_Push( fetcher->downloader, req, ((void*)0), 0 ) )
            return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}
