
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {char const* name; } ;



const char *
options_name(struct options_entry *o)
{
 return (o->name);
}
