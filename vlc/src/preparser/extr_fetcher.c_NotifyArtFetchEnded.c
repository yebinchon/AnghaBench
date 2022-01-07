
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fetcher_request {int userdata; int item; TYPE_1__* cbs; } ;
struct TYPE_2__ {int (* on_art_fetch_ended ) (int ,int,int ) ;} ;


 int stub1 (int ,int,int ) ;

__attribute__((used)) static void NotifyArtFetchEnded( struct fetcher_request* req, bool fetched )
{
    if (req->cbs && req->cbs->on_art_fetch_ended)
        req->cbs->on_art_fetch_ended(req->item, fetched, req->userdata);
}
