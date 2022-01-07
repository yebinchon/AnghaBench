
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ location_provider_t ;


 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static const location_provider_t *
find_location_provider(
 const location_provider_t location_providers[], const char *name)
{
 const location_provider_t *provider = ((void*)0);
 for (int i = 0; location_providers[i].name != ((void*)0); i++) {
  const location_provider_t *p = &location_providers[i];
  if (strcasecmp(name, p->name) == 0) {
   provider = p;
   break;
  }
 }

 return provider;
}
