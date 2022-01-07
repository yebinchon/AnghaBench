
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct array {size_t size; size_t nalloc; scalar_t__ nelem; int * elem; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int NC_ENOMEM ;
 int NC_OK ;
 int * nc_alloc (size_t) ;

rstatus_t
array_init(struct array *a, uint32_t n, size_t size)
{
    ASSERT(n != 0 && size != 0);

    a->elem = nc_alloc(n * size);
    if (a->elem == ((void*)0)) {
        return NC_ENOMEM;
    }

    a->nelem = 0;
    a->size = size;
    a->nalloc = n;

    return NC_OK;
}
