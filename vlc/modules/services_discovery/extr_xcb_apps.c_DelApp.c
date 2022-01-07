
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct app {int item; int owner; } ;


 int free (struct app*) ;
 int input_item_Release (int ) ;
 int services_discovery_RemoveItem (int ,int ) ;

__attribute__((used)) static void DelApp (void *data)
{
    struct app *app = data;

    services_discovery_RemoveItem (app->owner, app->item);
    input_item_Release (app->item);
    free (app);
}
