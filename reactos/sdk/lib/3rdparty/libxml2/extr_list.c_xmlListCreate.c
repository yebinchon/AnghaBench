
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlListPtr ;
typedef int * xmlListDeallocator ;
typedef int * xmlListDataCompare ;
typedef int xmlList ;
typedef TYPE_2__* xmlLinkPtr ;
typedef int xmlLink ;
struct TYPE_7__ {int * data; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
struct TYPE_6__ {int * linkCompare; int * linkDeallocator; TYPE_2__* sentinel; } ;


 int memset (TYPE_1__*,int ,int) ;
 int xmlFree (TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int * xmlLinkCompare ;
 scalar_t__ xmlMalloc (int) ;

xmlListPtr
xmlListCreate(xmlListDeallocator deallocator, xmlListDataCompare compare)
{
    xmlListPtr l;
    if (((void*)0) == (l = (xmlListPtr )xmlMalloc( sizeof(xmlList)))) {
        xmlGenericError(xmlGenericErrorContext,
          "Cannot initialize memory for list");
        return (((void*)0));
    }

    memset(l, 0, sizeof(xmlList));


    if (((void*)0) ==(l->sentinel = (xmlLinkPtr )xmlMalloc(sizeof(xmlLink)))) {
        xmlGenericError(xmlGenericErrorContext,
          "Cannot initialize memory for sentinel");
 xmlFree(l);
        return (((void*)0));
    }
    l->sentinel->next = l->sentinel;
    l->sentinel->prev = l->sentinel;
    l->sentinel->data = ((void*)0);


    if (deallocator != ((void*)0))
        l->linkDeallocator = deallocator;

    if (compare != ((void*)0))
        l->linkCompare = compare;
    else
        l->linkCompare = xmlLinkCompare;
    return l;
}
