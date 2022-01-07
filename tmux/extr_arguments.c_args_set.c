
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct args_value {int value; } ;
struct args_entry {int count; int values; int flag; } ;
struct args {int tree; } ;


 int RB_INSERT (int ,int *,struct args_entry*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct args_value*,struct args_entry*) ;
 struct args_entry* args_find (struct args*,int ) ;
 int args_tree ;
 void* xcalloc (int,int) ;
 int xstrdup (char const*) ;

void
args_set(struct args *args, u_char ch, const char *s)
{
 struct args_entry *entry;
 struct args_value *value;

 entry = args_find(args, ch);
 if (entry == ((void*)0)) {
  entry = xcalloc(1, sizeof *entry);
  entry->flag = ch;
  entry->count = 1;
  TAILQ_INIT(&entry->values);
  RB_INSERT(args_tree, &args->tree, entry);
 } else
  entry->count++;

 if (s != ((void*)0)) {
  value = xcalloc(1, sizeof *value);
  value->value = xstrdup(s);
  TAILQ_INSERT_TAIL(&entry->values, value, entry);
 }
}
