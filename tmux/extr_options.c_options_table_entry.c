
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_table_entry {int dummy; } ;
struct options_entry {struct options_table_entry const* tableentry; } ;



const struct options_table_entry *
options_table_entry(struct options_entry *o)
{
 return (o->tableentry);
}
