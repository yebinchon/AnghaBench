
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_data {scalar_t__ version; int * pointer; } ;


 scalar_t__ WL_POINTER_RELEASE_SINCE_VERSION ;
 int wl_pointer_destroy (int *) ;
 int wl_pointer_release (int *) ;

__attribute__((used)) static void pointer_destroy(struct seat_data *sd)
{
    if (sd->pointer == ((void*)0))
        return;

    if (sd->version >= WL_POINTER_RELEASE_SINCE_VERSION)
        wl_pointer_release(sd->pointer);
    else
        wl_pointer_destroy(sd->pointer);

    sd->pointer = ((void*)0);
}
