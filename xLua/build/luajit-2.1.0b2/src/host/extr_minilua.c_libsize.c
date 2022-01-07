
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ luaL_Reg ;



__attribute__((used)) static int libsize(const luaL_Reg*l){
int size=0;
for(;l->name;l++)size++;
return size;
}
