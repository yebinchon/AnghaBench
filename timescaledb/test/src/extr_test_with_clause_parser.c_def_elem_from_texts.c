
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* defnamespace; void* defname; int * arg; } ;
typedef int Node ;
typedef TYPE_1__ DefElem ;
typedef int Datum ;


 int DatumGetTextP (int ) ;
 int ERROR ;
 int elog (int ,char*,int) ;
 scalar_t__ makeString (void*) ;
 TYPE_1__* palloc0 (int) ;
 void* text_to_cstring (int ) ;

__attribute__((used)) static DefElem *
def_elem_from_texts(Datum *texts, int nelems)
{
 DefElem *elem = palloc0(sizeof(*elem));
 switch (nelems)
 {
  case 1:
   elem->defname = text_to_cstring(DatumGetTextP(texts[0]));
   break;
  case 3:
   elem->arg = (Node *) makeString(text_to_cstring(DatumGetTextP(texts[2])));

  case 2:
   elem->defname = text_to_cstring(DatumGetTextP(texts[1]));
   elem->defnamespace = text_to_cstring(DatumGetTextP(texts[0]));
   break;
  default:
   elog(ERROR, "%d elements invalid for defelem", nelems);
 }
 return elem;
}
