
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomizer {int loop; scalar_t__ history; scalar_t__ next; scalar_t__ head; int xsubi; int items; } ;


 int vlc_rand_bytes (int ,int) ;
 int vlc_vector_init (int *) ;

void
randomizer_Init(struct randomizer *r)
{
    vlc_vector_init(&r->items);



    vlc_rand_bytes(r->xsubi, sizeof(r->xsubi));

    r->loop = 0;
    r->head = 0;
    r->next = 0;
    r->history = 0;
}
