
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_request {int item; int rc; } ;


 int free (struct fetcher_request*) ;
 int input_item_Release (int ) ;
 int vlc_atomic_rc_dec (int *) ;

__attribute__((used)) static void RequestRelease( void* req_ )
{
    struct fetcher_request* req = req_;

    if( !vlc_atomic_rc_dec( &req->rc ) )
        return;

    input_item_Release( req->item );
    free( req );
}
