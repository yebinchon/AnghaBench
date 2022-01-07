
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *_synctex_malloc(size_t size) {
 void * ptr = malloc(size);
 if(ptr) {

  memset(ptr,0, size);
 }
 return (void *)ptr;
}
