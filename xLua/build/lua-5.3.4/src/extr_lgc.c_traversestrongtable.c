
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_5__ {unsigned int sizearray; int * array; } ;
typedef TYPE_1__ Table ;
typedef int Node ;


 int checkdeadkey (int *) ;
 int * gkey (int *) ;
 int * gnode (TYPE_1__*,int ) ;
 int * gnodelast (TYPE_1__*) ;
 int * gval (int *) ;
 int lua_assert (int) ;
 int markvalue (int *,int *) ;
 int removeentry (int *) ;
 scalar_t__ ttisnil (int *) ;

__attribute__((used)) static void traversestrongtable (global_State *g, Table *h) {
  Node *n, *limit = gnodelast(h);
  unsigned int i;
  for (i = 0; i < h->sizearray; i++)
    markvalue(g, &h->array[i]);
  for (n = gnode(h, 0); n < limit; n++) {
    checkdeadkey(n);
    if (ttisnil(gval(n)))
      removeentry(n);
    else {
      lua_assert(!ttisnil(gkey(n)));
      markvalue(g, gkey(n));
      markvalue(g, gval(n));
    }
  }
}
