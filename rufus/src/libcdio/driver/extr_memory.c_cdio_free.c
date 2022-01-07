
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void
cdio_free (void *p_memory)
{
  if (p_memory != ((void*)0))
    free(p_memory);
}
