
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_table_entry {scalar_t__ ch; int interm; } ;
struct input_ctx {scalar_t__ ch; int interm_buf; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
input_table_compare(const void *key, const void *value)
{
 const struct input_ctx *ictx = key;
 const struct input_table_entry *entry = value;

 if (ictx->ch != entry->ch)
  return (ictx->ch - entry->ch);
 return (strcmp(ictx->interm_buf, entry->interm));
}
