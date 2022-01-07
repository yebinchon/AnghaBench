
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long number; } ;
struct options_entry {TYPE_1__ value; } ;
struct options {int dummy; } ;


 int OPTIONS_IS_NUMBER (struct options_entry*) ;
 int fatalx (char*,char const*) ;
 struct options_entry* options_default (struct options*,int ) ;
 struct options_entry* options_get_only (struct options*,char const*) ;
 int options_parent_table_entry (struct options*,char const*) ;

struct options_entry *
options_set_number(struct options *oo, const char *name, long long value)
{
 struct options_entry *o;

 if (*name == '@')
  fatalx("user option %s must be a string", name);

 o = options_get_only(oo, name);
 if (o == ((void*)0)) {
  o = options_default(oo, options_parent_table_entry(oo, name));
  if (o == ((void*)0))
   return (((void*)0));
 }

 if (!OPTIONS_IS_NUMBER(o))
  fatalx("option %s is not a number", name);
 o->value.number = value;
 return (o);
}
