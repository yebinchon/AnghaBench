
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lasttarget; int pc; } ;
typedef TYPE_1__ FuncState ;



__attribute__((used)) static int luaK_getlabel(FuncState*fs){
fs->lasttarget=fs->pc;
return fs->pc;
}
