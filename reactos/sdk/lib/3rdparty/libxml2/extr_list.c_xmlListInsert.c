
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xmlListPtr ;
typedef TYPE_1__* xmlLinkPtr ;
typedef int xmlLink ;
struct TYPE_3__ {struct TYPE_3__* prev; struct TYPE_3__* next; void* data; } ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlListLowerSearch (int *,void*) ;
 scalar_t__ xmlMalloc (int) ;

int
xmlListInsert(xmlListPtr l, void *data)
{
    xmlLinkPtr lkPlace, lkNew;

    if (l == ((void*)0))
        return(1);
    lkPlace = xmlListLowerSearch(l, data);

    lkNew = (xmlLinkPtr) xmlMalloc(sizeof(xmlLink));
    if (lkNew == ((void*)0)) {
        xmlGenericError(xmlGenericErrorContext,
          "Cannot initialize memory for new link");
        return (1);
    }
    lkNew->data = data;
    lkPlace = lkPlace->prev;
    lkNew->next = lkPlace->next;
    (lkPlace->next)->prev = lkNew;
    lkPlace->next = lkNew;
    lkNew->prev = lkPlace;
    return 0;
}
