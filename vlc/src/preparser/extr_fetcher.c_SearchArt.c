
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;
typedef int input_fetcher_t ;


 int CheckArt (int *) ;
 int InvokeModule (int *,int *,int,char*) ;

__attribute__((used)) static int SearchArt( input_fetcher_t* fetcher, input_item_t* item, int scope)
{
    InvokeModule( fetcher, item, scope, "art finder" );
    return CheckArt( item );
}
