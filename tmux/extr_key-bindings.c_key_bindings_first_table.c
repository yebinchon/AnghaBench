
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int dummy; } ;


 struct key_table* RB_MIN (int ,int *) ;
 int key_tables ;

struct key_table *
key_bindings_first_table(void)
{
 return (RB_MIN(key_tables, &key_tables));
}
