
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef int xmlHashTable ;
typedef int xmlHashEntry ;
struct TYPE_4__ {int size; int random_seed; void* table; scalar_t__ nbElems; int * dict; } ;


 int __xmlRandom () ;
 int memset (void*,int ,int) ;
 int xmlFree (TYPE_1__*) ;
 void* xmlMalloc (int) ;

xmlHashTablePtr
xmlHashCreate(int size) {
    xmlHashTablePtr table;

    if (size <= 0)
        size = 256;

    table = xmlMalloc(sizeof(xmlHashTable));
    if (table) {
        table->dict = ((void*)0);
        table->size = size;
 table->nbElems = 0;
        table->table = xmlMalloc(size * sizeof(xmlHashEntry));
        if (table->table) {
     memset(table->table, 0, size * sizeof(xmlHashEntry));



     return(table);
        }
        xmlFree(table);
    }
    return(((void*)0));
}
