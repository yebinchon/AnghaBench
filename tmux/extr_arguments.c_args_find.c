
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct args_entry {int flag; } ;
struct args {int tree; } ;


 struct args_entry* RB_FIND (int ,int *,struct args_entry*) ;
 int args_tree ;

__attribute__((used)) static struct args_entry *
args_find(struct args *args, u_char ch)
{
 struct args_entry entry;

 entry.flag = ch;
 return (RB_FIND(args_tree, &args->tree, &entry));
}
