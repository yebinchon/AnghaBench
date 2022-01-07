
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,int) ;

__attribute__((used)) static void *tmLsmRealloc(void *ptr, int n){ return realloc(ptr, n); }
