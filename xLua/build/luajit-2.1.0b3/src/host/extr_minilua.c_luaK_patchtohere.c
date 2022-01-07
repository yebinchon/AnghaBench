
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int jpc; } ;
typedef TYPE_1__ FuncState ;


 int luaK_concat (TYPE_1__*,int *,int) ;
 int luaK_getlabel (TYPE_1__*) ;

__attribute__((used)) static void luaK_patchtohere(FuncState*fs,int list){
luaK_getlabel(fs);
luaK_concat(fs,&fs->jpc,list);
}
