
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int name; } ;
struct sproto {int type_n; struct sproto_type* type; } ;


 scalar_t__ strcmp (char const*,int ) ;

struct sproto_type *
sproto_type(const struct sproto *sp, const char * type_name) {
 int i;
 for (i=0;i<sp->type_n;i++) {
  if (strcmp(type_name, sp->type[i].name) == 0) {
   return &sp->type[i];
  }
 }
 return ((void*)0);
}
