
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {scalar_t__ nelem; int size; int elem; } ;
typedef int array_compare_t ;


 int ASSERT (int) ;
 int qsort (int ,scalar_t__,int ,int ) ;

void
array_sort(struct array *a, array_compare_t compare)
{
    ASSERT(a->nelem != 0);

    qsort(a->elem, a->nelem, a->size, compare);
}
