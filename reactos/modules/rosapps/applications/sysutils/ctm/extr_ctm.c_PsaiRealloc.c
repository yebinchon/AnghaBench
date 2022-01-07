
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;


 void* realloc (void*,int ) ;

void *PsaiRealloc(void *ptr, SIZE_T size) { return realloc(ptr, size); }
