
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* table_name; } ;
typedef size_t CatalogTable ;


 TYPE_1__* catalog_table_names ;

__attribute__((used)) static const char *
catalog_table_name(CatalogTable table)
{
 return catalog_table_names[table].table_name;
}
