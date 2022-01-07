
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct args_entry {int count; } ;
struct args {int dummy; } ;


 struct args_entry* args_find (struct args*,int ) ;

int
args_has(struct args *args, u_char ch)
{
 struct args_entry *entry;

 entry = args_find(args, ch);
 if (entry == ((void*)0))
  return (0);
 return (entry->count);
}
