
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {int dummy; } ;
struct options {int dummy; } ;


 int free (char*) ;
 struct options_entry* options_get (struct options*,char*) ;
 struct options_entry* options_get_only (struct options*,char*) ;
 char* options_parse (char const*,int*) ;

struct options_entry *
options_parse_get(struct options *oo, const char *s, int *idx, int only)
{
 struct options_entry *o;
 char *name;

 name = options_parse(s, idx);
 if (name == ((void*)0))
  return (((void*)0));
 if (only)
  o = options_get_only(oo, name);
 else
  o = options_get(oo, name);
 free(name);
 return (o);
}
