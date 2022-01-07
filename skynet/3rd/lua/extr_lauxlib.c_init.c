
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int L; } ;


 TYPE_1__ CC ;
 int luaL_newstate () ;

__attribute__((used)) static void
init() {
 CC.L = luaL_newstate();
}
