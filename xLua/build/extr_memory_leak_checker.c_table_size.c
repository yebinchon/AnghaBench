
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sizearray; } ;
typedef TYPE_1__ Table ;
typedef int Node ;


 int * gnode (TYPE_1__*,int ) ;
 int * gnodelast (TYPE_1__*) ;
 int gval (int *) ;
 scalar_t__ luaH_getn (TYPE_1__*) ;
 scalar_t__ sizenode (TYPE_1__*) ;
 int ttisnil (int ) ;

__attribute__((used)) static int table_size (Table *h, int fast)
{
 if (fast)
 {
  return (int)sizenode(h) + (int)h->sizearray;
 }
 else
 {
  Node *n, *limit = gnodelast(h);
  int i = (int)luaH_getn(h);
  for (n = gnode(h, 0); n < limit; n++)
  {
   if (!ttisnil(gval(n)))
   {
    i++;
   }
  }
  return i;
 }
}
