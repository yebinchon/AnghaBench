
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tobefnz; } ;
typedef TYPE_1__ global_State ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ GCObject ;


 int markobject (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void markbeingfnz (global_State *g) {
  GCObject *o;
  for (o = g->tobefnz; o != ((void*)0); o = o->next)
    markobject(g, o);
}
