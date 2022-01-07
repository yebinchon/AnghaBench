
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skynet_module {int name; } ;
struct TYPE_2__ {int count; struct skynet_module* m; } ;


 TYPE_1__* M ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct skynet_module *
_query(const char * name) {
 int i;
 for (i=0;i<M->count;i++) {
  if (strcmp(M->m[i].name,name)==0) {
   return &M->m[i];
  }
 }
 return ((void*)0);
}
