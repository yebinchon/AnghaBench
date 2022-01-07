
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
key_table_cmp(struct key_table *table1, struct key_table *table2)
{
 return (strcmp(table1->name, table2->name));
}
