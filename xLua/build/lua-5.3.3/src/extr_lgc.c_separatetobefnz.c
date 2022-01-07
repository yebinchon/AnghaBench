
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tobefnz; TYPE_2__* finobj; } ;
typedef TYPE_1__ global_State ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ GCObject ;


 TYPE_2__** findlast (int *) ;
 scalar_t__ iswhite (TYPE_2__*) ;
 int lua_assert (int ) ;
 int tofinalize (TYPE_2__*) ;

__attribute__((used)) static void separatetobefnz (global_State *g, int all) {
  GCObject *curr;
  GCObject **p = &g->finobj;
  GCObject **lastnext = findlast(&g->tobefnz);
  while ((curr = *p) != ((void*)0)) {
    lua_assert(tofinalize(curr));
    if (!(iswhite(curr) || all))
      p = &curr->next;
    else {
      *p = curr->next;
      curr->next = *lastnext;
      *lastnext = curr;
      lastnext = &curr->next;
    }
  }
}
