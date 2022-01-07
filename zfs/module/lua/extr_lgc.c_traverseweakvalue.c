
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int grayagain; int weak; } ;
typedef TYPE_1__ global_State ;
struct TYPE_11__ {scalar_t__ sizearray; } ;
typedef TYPE_2__ Table ;
typedef int Node ;


 int checkdeadkey (int *) ;
 int gkey (int *) ;
 int * gnode (TYPE_2__*,int ) ;
 int * gnodelast (TYPE_2__*) ;
 int gval (int *) ;
 scalar_t__ iscleared (TYPE_1__*,int ) ;
 int linktable (TYPE_2__*,int *) ;
 int lua_assert (int) ;
 int markvalue (TYPE_1__*,int ) ;
 int removeentry (int *) ;
 scalar_t__ ttisnil (int ) ;

__attribute__((used)) static void traverseweakvalue (global_State *g, Table *h) {
  Node *n, *limit = gnodelast(h);


  int hasclears = (h->sizearray > 0);
  for (n = gnode(h, 0); n < limit; n++) {
    checkdeadkey(n);
    if (ttisnil(gval(n)))
      removeentry(n);
    else {
      lua_assert(!ttisnil(gkey(n)));
      markvalue(g, gkey(n));
      if (!hasclears && iscleared(g, gval(n)))
        hasclears = 1;
    }
  }
  if (hasclears)
    linktable(h, &g->weak);
  else
    linktable(h, &g->grayagain);
}
