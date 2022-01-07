
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct array {size_t nelem; size_t nalloc; size_t size; void* elem; } ;


 void* nc_realloc (void*,int) ;

void *
array_push(struct array *a)
{
    void *elem, *new;
    size_t size;

    if (a->nelem == a->nalloc) {


        size = a->size * a->nalloc;
        new = nc_realloc(a->elem, 2 * size);
        if (new == ((void*)0)) {
            return ((void*)0);
        }

        a->elem = new;
        a->nalloc *= 2;
    }

    elem = (uint8_t *)a->elem + a->size * a->nelem;
    a->nelem++;

    return elem;
}
