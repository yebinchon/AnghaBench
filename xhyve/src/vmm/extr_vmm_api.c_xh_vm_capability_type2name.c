
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int type; } ;


 TYPE_1__* capstrmap ;

const char *
xh_vm_capability_type2name(int type)
{
 int i;

 for (i = 0; (capstrmap[i].name != ((void*)0)); i++) {
  if (capstrmap[i].type == type) {
   return (capstrmap[i].name);
  }
 }

 return (((void*)0));
}
