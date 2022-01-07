
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fetcher_request {int options; int rc; void* userdata; int const* cbs; int * item; } ;
struct background_worker {int dummy; } ;
typedef int input_item_t ;
typedef int input_item_meta_request_option_t ;
struct TYPE_3__ {struct background_worker* network; struct background_worker* local; } ;
typedef TYPE_1__ input_fetcher_t ;
typedef int input_fetcher_callbacks_t ;


 int META_REQUEST_OPTION_FETCH_ANY ;
 int META_REQUEST_OPTION_FETCH_LOCAL ;
 int NotifyArtFetchEnded (struct fetcher_request*,int) ;
 int RequestRelease (struct fetcher_request*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 scalar_t__ background_worker_Push (struct background_worker*,struct fetcher_request*,int *,int ) ;
 int input_item_Hold (int *) ;
 struct fetcher_request* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_atomic_rc_init (int *) ;

int input_fetcher_Push( input_fetcher_t* fetcher, input_item_t* item,
    input_item_meta_request_option_t options,
    const input_fetcher_callbacks_t *cbs, void *cbs_userdata )
{
    assert(options & META_REQUEST_OPTION_FETCH_ANY);
    struct fetcher_request* req = malloc( sizeof *req );

    if( unlikely( !req ) )
        return VLC_ENOMEM;

    req->item = item;
    req->options = options;
    req->cbs = cbs;
    req->userdata = cbs_userdata;

    vlc_atomic_rc_init( &req->rc );
    input_item_Hold( item );

    struct background_worker* worker =
        options & META_REQUEST_OPTION_FETCH_LOCAL ? fetcher->local : fetcher->network;
    if( background_worker_Push( worker, req, ((void*)0), 0 ) )
        NotifyArtFetchEnded(req, 0);

    RequestRelease( req );
    return VLC_SUCCESS;
}
