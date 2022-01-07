
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union options_value {int number; int style; int string; } ;
typedef size_t u_int ;
struct options_table_entry {int flags; int type; int default_num; int default_str; int ** default_arr; } ;
struct options_entry {union options_value value; } ;
struct options {int dummy; } ;


 int OPTIONS_TABLE_IS_ARRAY ;


 int grid_default_cell ;
 int options_array_assign (struct options_entry*,int ,int *) ;
 int options_array_set (struct options_entry*,size_t,int *,int ,int *) ;
 struct options_entry* options_empty (struct options*,struct options_table_entry const*) ;
 int style_parse (int *,int *,int ) ;
 int style_set (int *,int *) ;
 int xstrdup (int ) ;

struct options_entry *
options_default(struct options *oo, const struct options_table_entry *oe)
{
 struct options_entry *o;
 union options_value *ov;
 u_int i;

 o = options_empty(oo, oe);
 ov = &o->value;

 if (oe->flags & OPTIONS_TABLE_IS_ARRAY) {
  if (oe->default_arr == ((void*)0)) {
   options_array_assign(o, oe->default_str, ((void*)0));
   return (o);
  }
  for (i = 0; oe->default_arr[i] != ((void*)0); i++)
   options_array_set(o, i, oe->default_arr[i], 0, ((void*)0));
  return (o);
 }

 switch (oe->type) {
 case 129:
  ov->string = xstrdup(oe->default_str);
  break;
 case 128:
  style_set(&ov->style, &grid_default_cell);
  style_parse(&ov->style, &grid_default_cell, oe->default_str);
  break;
 default:
  ov->number = oe->default_num;
  break;
 }
 return (o);
}
