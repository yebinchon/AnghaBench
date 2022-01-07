
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {scalar_t__ nelem; int * elem; } ;


 int ASSERT (int) ;
 int nc_free (int *) ;

void
array_deinit(struct array *a)
{
    ASSERT(a->nelem == 0);

    if (a->elem != ((void*)0)) {
        nc_free(a->elem);
    }
}
