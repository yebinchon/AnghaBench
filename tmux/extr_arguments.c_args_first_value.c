
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct args_value {char const* value; } ;
struct args_entry {int values; } ;
struct args {int dummy; } ;


 struct args_value* TAILQ_FIRST (int *) ;
 struct args_entry* args_find (struct args*,int ) ;

const char *
args_first_value(struct args *args, u_char ch, struct args_value **value)
{
 struct args_entry *entry;

 if ((entry = args_find(args, ch)) == ((void*)0))
  return (((void*)0));

 *value = TAILQ_FIRST(&entry->values);
 if (*value == ((void*)0))
  return (((void*)0));
 return ((*value)->value);
}
