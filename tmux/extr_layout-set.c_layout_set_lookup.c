
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {int name; } ;


 TYPE_1__* layout_sets ;
 size_t nitems (TYPE_1__*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

int
layout_set_lookup(const char *name)
{
 u_int i;
 int matched = -1;

 for (i = 0; i < nitems(layout_sets); i++) {
  if (strncmp(layout_sets[i].name, name, strlen(name)) == 0) {
   if (matched != -1)
    return (-1);
   matched = i;
  }
 }

 return (matched);
}
