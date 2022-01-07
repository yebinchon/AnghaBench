
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union options_value {int dummy; } options_value ;
typedef int u_int ;
struct options_entry {int dummy; } ;
struct options_array_item {union options_value value; } ;


 int OPTIONS_IS_ARRAY (struct options_entry*) ;
 struct options_array_item* options_array_item (struct options_entry*,int ) ;

union options_value *
options_array_get(struct options_entry *o, u_int idx)
{
 struct options_array_item *a;

 if (!OPTIONS_IS_ARRAY(o))
  return (((void*)0));
 a = options_array_item(o, idx);
 if (a == ((void*)0))
  return (((void*)0));
 return (&a->value);
}
