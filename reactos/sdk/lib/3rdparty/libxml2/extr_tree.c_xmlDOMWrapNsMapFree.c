
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNsMapPtr ;
typedef TYPE_1__* xmlNsMapItemPtr ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* first; struct TYPE_5__* pool; } ;


 int xmlFree (TYPE_1__*) ;

__attribute__((used)) static void
xmlDOMWrapNsMapFree(xmlNsMapPtr nsmap)
{
    xmlNsMapItemPtr cur, tmp;

    if (nsmap == ((void*)0))
 return;
    cur = nsmap->pool;
    while (cur != ((void*)0)) {
 tmp = cur;
 cur = cur->next;
 xmlFree(tmp);
    }
    cur = nsmap->first;
    while (cur != ((void*)0)) {
 tmp = cur;
 cur = cur->next;
 xmlFree(tmp);
    }
    xmlFree(nsmap);
}
