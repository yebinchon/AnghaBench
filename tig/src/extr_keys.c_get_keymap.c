
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {int name; } ;


 int ARRAY_SIZE (struct keymap*) ;
 struct keymap* keymaps ;
 int strncasecmp (int ,char const*,size_t) ;

struct keymap *
get_keymap(const char *name, size_t namelen)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(keymaps); i++)
  if (!strncasecmp(keymaps[i].name, name, namelen))
   return &keymaps[i];

 return ((void*)0);
}
