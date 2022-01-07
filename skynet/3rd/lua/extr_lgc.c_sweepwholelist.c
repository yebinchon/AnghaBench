
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ GCObject ;


 int freeobj (int *,TYPE_1__*) ;

__attribute__((used)) static void sweepwholelist (lua_State *L, GCObject **p) {
  while (*p != ((void*)0)) {
    GCObject *curr = *p;
    *p = curr->next;
    freeobj(L, curr);
   }
}
