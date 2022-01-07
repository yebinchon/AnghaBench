
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* ap; int * l; } ;
typedef TYPE_1__ xmlRemoveMemo ;
typedef int * xmlRefTablePtr ;
typedef int * xmlListPtr ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_10__ {int children; } ;
struct TYPE_9__ {scalar_t__ refs; } ;


 int xmlFree (int *) ;
 int xmlFreeRefTableEntry ;
 int * xmlHashLookup (int *,int *) ;
 int xmlHashUpdateEntry (int *,int *,int *,int ) ;
 scalar_t__ xmlListEmpty (int *) ;
 int xmlListWalk (int *,int ,TYPE_1__*) ;
 int * xmlNodeListGetString (TYPE_2__*,int ,int) ;
 int xmlWalkRemoveRef ;

int
xmlRemoveRef(xmlDocPtr doc, xmlAttrPtr attr) {
    xmlListPtr ref_list;
    xmlRefTablePtr table;
    xmlChar *ID;
    xmlRemoveMemo target;

    if (doc == ((void*)0)) return(-1);
    if (attr == ((void*)0)) return(-1);

    table = (xmlRefTablePtr) doc->refs;
    if (table == ((void*)0))
        return(-1);

    ID = xmlNodeListGetString(doc, attr->children, 1);
    if (ID == ((void*)0))
        return(-1);

    ref_list = xmlHashLookup(table, ID);
    if(ref_list == ((void*)0)) {
        xmlFree(ID);
        return (-1);
    }
    target.l = ref_list;
    target.ap = attr;


    xmlListWalk(ref_list, xmlWalkRemoveRef, &target);


    if (xmlListEmpty(ref_list))
        xmlHashUpdateEntry(table, ID, ((void*)0), xmlFreeRefTableEntry);
    xmlFree(ID);
    return(0);
}
