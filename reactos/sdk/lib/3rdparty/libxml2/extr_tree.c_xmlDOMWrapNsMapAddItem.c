
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* xmlNsPtr ;
typedef TYPE_1__* xmlNsMapPtr ;
typedef TYPE_1__* xmlNsMapItemPtr ;
struct xmlNsMapItem {int dummy; } ;
struct xmlNsMap {int dummy; } ;
struct TYPE_6__ {int shadowDepth; int depth; void* newNs; void* oldNs; struct TYPE_6__* first; struct TYPE_6__* next; struct TYPE_6__* prev; struct TYPE_6__* last; struct TYPE_6__* pool; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlTreeErrMemory (char*) ;

__attribute__((used)) static xmlNsMapItemPtr
xmlDOMWrapNsMapAddItem(xmlNsMapPtr *nsmap, int position,
         xmlNsPtr oldNs, xmlNsPtr newNs, int depth)
{
    xmlNsMapItemPtr ret;
    xmlNsMapPtr map;

    if (nsmap == ((void*)0))
 return(((void*)0));
    if ((position != -1) && (position != 0))
 return(((void*)0));
    map = *nsmap;

    if (map == ((void*)0)) {



 map = (xmlNsMapPtr) xmlMalloc(sizeof(struct xmlNsMap));
 if (map == ((void*)0)) {
     xmlTreeErrMemory("allocating namespace map");
     return (((void*)0));
 }
 memset(map, 0, sizeof(struct xmlNsMap));
 *nsmap = map;
    }

    if (map->pool != ((void*)0)) {



 ret = map->pool;
 map->pool = ret->next;
 memset(ret, 0, sizeof(struct xmlNsMapItem));
    } else {



 ret = (xmlNsMapItemPtr) xmlMalloc(sizeof(struct xmlNsMapItem));
 if (ret == ((void*)0)) {
     xmlTreeErrMemory("allocating namespace map item");
     return (((void*)0));
 }
 memset(ret, 0, sizeof(struct xmlNsMapItem));
    }

    if (map->first == ((void*)0)) {



 map->first = ret;
 map->last = ret;
    } else if (position == -1) {



 ret->prev = map->last;
 map->last->next = ret;
 map->last = ret;
    } else if (position == 0) {



 map->first->prev = ret;
 ret->next = map->first;
 map->first = ret;
    }

    ret->oldNs = oldNs;
    ret->newNs = newNs;
    ret->shadowDepth = -1;
    ret->depth = depth;
    return (ret);
}
