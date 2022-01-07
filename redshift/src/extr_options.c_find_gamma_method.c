
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ gamma_method_t ;


 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static const gamma_method_t *
find_gamma_method(const gamma_method_t gamma_methods[], const char *name)
{
 const gamma_method_t *method = ((void*)0);
 for (int i = 0; gamma_methods[i].name != ((void*)0); i++) {
  const gamma_method_t *m = &gamma_methods[i];
  if (strcasecmp(name, m->name) == 0) {
   method = m;
   break;
  }
 }

 return method;
}
