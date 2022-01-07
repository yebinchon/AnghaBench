
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomizer {int items; } ;


 int vlc_vector_destroy (int *) ;

void
randomizer_Destroy(struct randomizer *r)
{
    vlc_vector_destroy(&r->items);
}
