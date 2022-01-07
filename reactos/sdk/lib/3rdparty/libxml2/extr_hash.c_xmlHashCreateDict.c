
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef int xmlDictPtr ;
struct TYPE_4__ {int dict; } ;


 int xmlDictReference (int ) ;
 TYPE_1__* xmlHashCreate (int) ;

xmlHashTablePtr
xmlHashCreateDict(int size, xmlDictPtr dict) {
    xmlHashTablePtr table;

    table = xmlHashCreate(size);
    if (table != ((void*)0)) {
        table->dict = dict;
 xmlDictReference(dict);
    }
    return(table);
}
