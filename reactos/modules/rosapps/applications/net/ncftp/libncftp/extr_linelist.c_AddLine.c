
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nLines; TYPE_1__* last; TYPE_1__* first; } ;
struct TYPE_6__ {char* line; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;
typedef int Line ;


 char* StrDup (char const*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

LinePtr
AddLine(LineListPtr list, const char *buf1)
{
 LinePtr lp;
 char *buf;

 lp = (LinePtr) malloc(sizeof(Line));
 if (lp != ((void*)0)) {
  buf = StrDup(buf1);
  if (buf == ((void*)0)) {
   free(lp);
   lp = ((void*)0);
  } else {
   lp->line = buf;
   lp->next = ((void*)0);
   if (list->first == ((void*)0)) {
    list->first = list->last = lp;
    lp->prev = ((void*)0);
    list->nLines = 1;
   } else {
    lp->prev = list->last;
    list->last->next = lp;
    list->last = lp;
    list->nLines++;
   }
  }
 }
 return lp;
}
