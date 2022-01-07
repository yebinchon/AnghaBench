
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static void gSzAlloc_Free(void *self, void *ptr) { (void)self; free(ptr); }
