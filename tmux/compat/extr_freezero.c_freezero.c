
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int memset (void*,int ,size_t) ;

void
freezero(void *ptr, size_t size)
{
 if (ptr != ((void*)0)) {
  memset(ptr, 0, size);
  free(ptr);
 }
}
