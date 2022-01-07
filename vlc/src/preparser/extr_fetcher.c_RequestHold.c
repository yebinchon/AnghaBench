
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_request {int rc; } ;


 int vlc_atomic_rc_inc (int *) ;

__attribute__((used)) static void RequestHold( void* req_ )
{
    struct fetcher_request* req = req_;
    vlc_atomic_rc_inc( &req->rc );
}
