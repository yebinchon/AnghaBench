
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ l_mem ;
struct TYPE_15__ {int gcfinnum; scalar_t__ GCmemtrav; int currentwhite; int * allweak; int * weak; int * ephemeron; int * gray; int l_registry; int gcstate; int mainthread; int * grayagain; } ;
typedef TYPE_1__ global_State ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 int GCSinsideatomic ;
 int cast_byte (int ) ;
 int clearkeys (TYPE_1__*,int *,int *) ;
 int clearvalues (TYPE_1__*,int *,int *) ;
 int convergeephemerons (TYPE_1__*) ;
 int iswhite (int ) ;
 int luaS_clearcache (TYPE_1__*) ;
 int lua_assert (int) ;
 int markbeingfnz (TYPE_1__*) ;
 int markmt (TYPE_1__*) ;
 int markobject (TYPE_1__*,int *) ;
 int markvalue (TYPE_1__*,int *) ;
 int otherwhite (TYPE_1__*) ;
 int propagateall (TYPE_1__*) ;
 int remarkupvals (TYPE_1__*) ;
 int separatetobefnz (TYPE_1__*,int ) ;

__attribute__((used)) static l_mem atomic (lua_State *L) {
  global_State *g = G(L);
  l_mem work;
  GCObject *origweak, *origall;
  GCObject *grayagain = g->grayagain;
  lua_assert(g->ephemeron == ((void*)0) && g->weak == ((void*)0));
  lua_assert(!iswhite(g->mainthread));
  g->gcstate = GCSinsideatomic;
  g->GCmemtrav = 0;
  markobject(g, L);

  markvalue(g, &g->l_registry);
  markmt(g);

  remarkupvals(g);
  propagateall(g);
  work = g->GCmemtrav;
  g->gray = grayagain;
  propagateall(g);
  g->GCmemtrav = 0;
  convergeephemerons(g);


  clearvalues(g, g->weak, ((void*)0));
  clearvalues(g, g->allweak, ((void*)0));
  origweak = g->weak; origall = g->allweak;
  work += g->GCmemtrav;
  separatetobefnz(g, 0);
  g->gcfinnum = 1;
  markbeingfnz(g);
  propagateall(g);
  g->GCmemtrav = 0;
  convergeephemerons(g);


  clearkeys(g, g->ephemeron, ((void*)0));
  clearkeys(g, g->allweak, ((void*)0));

  clearvalues(g, g->weak, origweak);
  clearvalues(g, g->allweak, origall);
  luaS_clearcache(g);
  g->currentwhite = cast_byte(otherwhite(g));
  work += g->GCmemtrav;
  return work;
}
