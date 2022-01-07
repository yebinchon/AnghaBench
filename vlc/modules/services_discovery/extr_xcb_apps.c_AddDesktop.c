
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int input_item_t ;


 int _ (char*) ;
 int * input_item_NewCard (char*,int ) ;
 int input_item_Release (int *) ;
 int services_discovery_AddItem (int *,int *) ;

__attribute__((used)) static void AddDesktop(services_discovery_t *sd)
{
    input_item_t *item;

    item = input_item_NewCard ("screen://", _("Desktop"));
    if (item == ((void*)0))
        return;

    services_discovery_AddItem(sd, item);
    input_item_Release (item);
}
