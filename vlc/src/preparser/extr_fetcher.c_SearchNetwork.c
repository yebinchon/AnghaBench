
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_request {int item; } ;
typedef int input_fetcher_t ;


 int FETCHER_SCOPE_NETWORK ;
 int NotifyArtFetchEnded (struct fetcher_request*,int) ;
 scalar_t__ SearchByScope (int *,struct fetcher_request*,int ) ;
 int input_item_SetArtNotFound (int ,int) ;

__attribute__((used)) static void SearchNetwork( input_fetcher_t* fetcher, struct fetcher_request* req )
{
    if( SearchByScope( fetcher, req, FETCHER_SCOPE_NETWORK ) )
    {
        input_item_SetArtNotFound( req->item, 1 );
        NotifyArtFetchEnded(req, 0);
    }
}
