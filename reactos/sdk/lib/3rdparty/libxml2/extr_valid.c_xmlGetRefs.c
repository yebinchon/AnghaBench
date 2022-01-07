
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xmlRefTablePtr ;
typedef int * xmlListPtr ;
typedef TYPE_1__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_3__ {scalar_t__ refs; } ;


 int * xmlHashLookup (int *,int const*) ;

xmlListPtr
xmlGetRefs(xmlDocPtr doc, const xmlChar *ID) {
    xmlRefTablePtr table;

    if (doc == ((void*)0)) {
        return(((void*)0));
    }

    if (ID == ((void*)0)) {
        return(((void*)0));
    }

    table = (xmlRefTablePtr) doc->refs;
    if (table == ((void*)0))
        return(((void*)0));

    return (xmlHashLookup(table, ID));
}
