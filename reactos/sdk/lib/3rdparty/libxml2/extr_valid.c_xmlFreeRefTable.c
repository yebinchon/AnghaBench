
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlRefTablePtr ;


 int xmlFreeRefTableEntry ;
 int xmlHashFree (int ,int ) ;

void
xmlFreeRefTable(xmlRefTablePtr table) {
    xmlHashFree(table, xmlFreeRefTableEntry);
}
