
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct args_entry {int values; } ;
struct args {int dummy; } ;
struct TYPE_2__ {char const* value; } ;


 TYPE_1__* TAILQ_LAST (int *,int ) ;
 struct args_entry* args_find (struct args*,int ) ;
 int args_values ;

const char *
args_get(struct args *args, u_char ch)
{
 struct args_entry *entry;

 if ((entry = args_find(args, ch)) == ((void*)0))
  return (((void*)0));
 return (TAILQ_LAST(&entry->values, args_values)->value);
}
