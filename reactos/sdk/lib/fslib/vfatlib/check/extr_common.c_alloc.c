
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;
 int pdie (char*) ;

void *alloc(int size)
{
    void *this;

    if ((this = malloc(size)))
 return this;
    pdie("malloc");
    return ((void*)0);
}
