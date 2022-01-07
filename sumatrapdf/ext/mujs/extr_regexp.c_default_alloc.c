
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *default_alloc(void *ctx, void *p, int n)
{
 return realloc(p, (size_t)n);
}
