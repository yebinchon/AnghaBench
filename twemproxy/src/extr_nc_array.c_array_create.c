
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct array {size_t size; size_t nalloc; scalar_t__ nelem; int * elem; } ;


 int ASSERT (int) ;
 void* nc_alloc (size_t) ;
 int nc_free (struct array*) ;

struct array *
array_create(uint32_t n, size_t size)
{
    struct array *a;

    ASSERT(n != 0 && size != 0);

    a = nc_alloc(sizeof(*a));
    if (a == ((void*)0)) {
        return ((void*)0);
    }

    a->elem = nc_alloc(n * size);
    if (a->elem == ((void*)0)) {
        nc_free(a);
        return ((void*)0);
    }

    a->nelem = 0;
    a->size = size;
    a->nalloc = n;

    return a;
}
