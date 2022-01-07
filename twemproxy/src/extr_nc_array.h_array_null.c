
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {scalar_t__ nalloc; scalar_t__ size; int * elem; scalar_t__ nelem; } ;



__attribute__((used)) static inline void
array_null(struct array *a)
{
    a->nelem = 0;
    a->elem = ((void*)0);
    a->size = 0;
    a->nalloc = 0;
}
