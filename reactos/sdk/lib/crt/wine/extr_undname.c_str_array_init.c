
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {int * elts; scalar_t__ alloc; scalar_t__ max; scalar_t__ num; scalar_t__ start; } ;



__attribute__((used)) static void str_array_init(struct array* a)
{
    a->start = a->num = a->max = a->alloc = 0;
    a->elts = ((void*)0);
}
