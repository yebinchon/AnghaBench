
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int item; int sd; } ;


 int free (struct device*) ;
 int input_item_Release (int ) ;
 int services_discovery_RemoveItem (int ,int ) ;

__attribute__((used)) static void DestroySource (void *data)
{
    struct device *d = data;

    services_discovery_RemoveItem (d->sd, d->item);
    input_item_Release (d->item);
    free (d);
}
