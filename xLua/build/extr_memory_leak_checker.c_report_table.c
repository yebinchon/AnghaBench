
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int sizearray; int * array; int * metatable; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int (* ObjectRelationshipReport ) (TYPE_1__*,int *,int,int *,unsigned int,int *) ;
typedef int Node ;


 int * gcvalue (int const*) ;
 int * getstr (int ) ;
 int * gkey (int *) ;
 int * gnode (TYPE_1__*,int ) ;
 int * gnodelast (TYPE_1__*) ;
 int * gval (int *) ;
 unsigned int nvalue (int const*) ;
 int tsvalue (int const*) ;
 int ttisnil (int *) ;
 scalar_t__ ttisnumber (int const*) ;
 scalar_t__ ttisstring (int const*) ;
 scalar_t__ ttistable (int const*) ;
 unsigned int ttnov (int const*) ;

__attribute__((used)) static void report_table(Table *h, ObjectRelationshipReport cb)
{
 Node *n, *limit = gnodelast(h);
    unsigned int i;

 if (h->metatable != ((void*)0))
 {
  cb(h, h->metatable, 4, ((void*)0), 0, ((void*)0));
 }

    for (i = 0; i < h->sizearray; i++)
 {
  const TValue *item = &h->array[i];
  if (ttistable(item))
  {
      cb(h, gcvalue(item), 2, ((void*)0), i + 1, ((void*)0));
  }
 }

    for (n = gnode(h, 0); n < limit; n++)
 {
        if (!ttisnil(gval(n)))
        {
            const TValue *key = gkey(n);
   if (ttistable(key))
   {
    cb(h, gcvalue(key), 3, ((void*)0), 0, ((void*)0));
   }
            const TValue *value = gval(n);
   if (ttistable(value))
   {
    if (ttisstring(key))
    {
     cb(h, gcvalue(value), 1, getstr(tsvalue(key)), 0, ((void*)0));
    }
    else if(ttisnumber(key))
    {
     cb(h, gcvalue(value), 2, ((void*)0), nvalue(key), ((void*)0));
    }
    else
    {

     cb(h, gcvalue(value), 1, ((void*)0), ttnov(key), ((void*)0));
    }
   }
  }
    }
}
