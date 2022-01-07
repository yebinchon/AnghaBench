
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct style {int dummy; } ;
struct TYPE_2__ {struct style style; } ;
struct options_entry {TYPE_1__ value; } ;
struct options {int dummy; } ;


 int OPTIONS_IS_STYLE (struct options_entry*) ;
 int fatalx (char*,char const*) ;
 struct options_entry* options_get (struct options*,char const*) ;

struct style *
options_get_style(struct options *oo, const char *name)
{
 struct options_entry *o;

 o = options_get(oo, name);
 if (o == ((void*)0))
  fatalx("missing option %s", name);
 if (!OPTIONS_IS_STYLE(o))
  fatalx("option %s is not a style", name);
 return (&o->value.style);
}
