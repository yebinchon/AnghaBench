
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* xmlAttrPtr ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; TYPE_1__* parent; } ;
struct TYPE_5__ {TYPE_2__* properties; } ;


 int xmlFreeProp (TYPE_2__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

int
xmlRemoveProp(xmlAttrPtr cur) {
    xmlAttrPtr tmp;
    if (cur == ((void*)0)) {




 return(-1);
    }
    if (cur->parent == ((void*)0)) {




 return(-1);
    }
    tmp = cur->parent->properties;
    if (tmp == cur) {
        cur->parent->properties = cur->next;
  if (cur->next != ((void*)0))
   cur->next->prev = ((void*)0);
 xmlFreeProp(cur);
 return(0);
    }
    while (tmp != ((void*)0)) {
 if (tmp->next == cur) {
     tmp->next = cur->next;
     if (tmp->next != ((void*)0))
  tmp->next->prev = tmp;
     xmlFreeProp(cur);
     return(0);
 }
        tmp = tmp->next;
    }




    return(-1);
}
