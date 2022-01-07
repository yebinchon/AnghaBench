
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loop; } ;
typedef TYPE_1__ thread ;
typedef int lua_State ;


 int aeStop (int ) ;
 TYPE_1__* checkthread (int *) ;

__attribute__((used)) static int script_thread_stop(lua_State *L) {
    thread *t = checkthread(L);
    aeStop(t->loop);
    return 0;
}
