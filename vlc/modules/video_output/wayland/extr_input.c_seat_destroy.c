
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_data {scalar_t__ version; int seat; int * xkb; int node; } ;


 scalar_t__ WL_SEAT_RELEASE_SINCE_VERSION ;
 int free (struct seat_data*) ;
 int keyboard_destroy (struct seat_data*) ;
 int pointer_destroy (struct seat_data*) ;
 int wl_list_remove (int *) ;
 int wl_seat_destroy (int ) ;
 int wl_seat_release (int ) ;
 int xkb_context_unref (int *) ;

__attribute__((used)) static void seat_destroy(struct seat_data *sd)
{
    wl_list_remove(&sd->node);







    pointer_destroy(sd);

    if (sd->version >= WL_SEAT_RELEASE_SINCE_VERSION)
        wl_seat_release(sd->seat);
    else
        wl_seat_destroy(sd->seat);
    free(sd);
}
