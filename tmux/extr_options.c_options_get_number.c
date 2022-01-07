
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
 struct options_entry* options_get (struct options*,char const*) ;

long long
options_get_number(struct options *oo, const char *name)
{
 struct options_entry *o;

 o = options_get(oo, name);
 if (o == ((void*)0))
  fatalx("missing option %s", name);
 if (!OPTIONS_IS_NUMBER(o))
     fatalx("option %s is not a number", name);
 return (o->value.number);
}
