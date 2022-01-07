
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlRefPtr ;
typedef int xmlLinkPtr ;
struct TYPE_4__ {int * name; int * value; } ;
typedef TYPE_1__ xmlChar ;


 int xmlFree (TYPE_1__*) ;
 int xmlLinkGetData (int ) ;

__attribute__((used)) static void
xmlFreeRef(xmlLinkPtr lk) {
    xmlRefPtr ref = (xmlRefPtr)xmlLinkGetData(lk);
    if (ref == ((void*)0)) return;
    if (ref->value != ((void*)0))
        xmlFree((xmlChar *)ref->value);
    if (ref->name != ((void*)0))
        xmlFree((xmlChar *)ref->name);
    xmlFree(ref);
}
