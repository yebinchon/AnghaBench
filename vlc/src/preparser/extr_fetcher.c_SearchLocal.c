
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fetcher_request {int options; int item; } ;
struct TYPE_4__ {int network; int owner; } ;
typedef TYPE_1__ input_fetcher_t ;


 int FETCHER_SCOPE_LOCAL ;
 int META_REQUEST_OPTION_FETCH_NETWORK ;
 int NotifyArtFetchEnded (struct fetcher_request*,int) ;
 scalar_t__ SearchByScope (TYPE_1__*,struct fetcher_request*,int ) ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ background_worker_Push (int ,struct fetcher_request*,int *,int ) ;
 int input_item_SetArtNotFound (int ,int) ;
 scalar_t__ var_InheritBool (int ,char*) ;

__attribute__((used)) static void SearchLocal( input_fetcher_t* fetcher, struct fetcher_request* req )
{
    if( SearchByScope( fetcher, req, FETCHER_SCOPE_LOCAL ) == VLC_SUCCESS )
        return;

    if( var_InheritBool( fetcher->owner, "metadata-network-access" ) ||
        req->options & META_REQUEST_OPTION_FETCH_NETWORK )
    {
        if( background_worker_Push( fetcher->network, req, ((void*)0), 0 ) )
            NotifyArtFetchEnded(req, 0);
    }
    else
    {
        input_item_SetArtNotFound( req->item, 1 );
        NotifyArtFetchEnded(req, 0);
    }
}
