
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EngFreeMem (size_t*) ;

void
free(void *Object)
{
    if (Object != ((void*)0))
    {
        EngFreeMem((size_t *)Object - 1);
    }
}
