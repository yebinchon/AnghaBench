
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* RTLD_DEFAULT ;
 scalar_t__ dlsym (void*,char const*) ;

__attribute__((used)) static const char *ll_bcsym(void *lib, const char *sym)
{





  return (const char *)dlsym(lib, sym);
}
