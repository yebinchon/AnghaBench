
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * f; } ;
typedef TYPE_1__ LStream ;


 int aux_close (int *) ;
 int isclosed (TYPE_1__*) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static int f_gc (lua_State *L) {
  LStream *p = tolstream(L);
  if (!isclosed(p) && p->f != ((void*)0))
    aux_close(L);
  return 0;
}
