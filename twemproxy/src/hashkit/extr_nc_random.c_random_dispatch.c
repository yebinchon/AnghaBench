
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct continuum {int index; } ;


 int ASSERT (int) ;
 int random () ;

uint32_t
random_dispatch(struct continuum *continuum, uint32_t ncontinuum, uint32_t hash)
{
    struct continuum *c;

    ASSERT(continuum != ((void*)0));
    ASSERT(ncontinuum != 0);

    c = continuum + random() % ncontinuum;

    return c->index;
}
