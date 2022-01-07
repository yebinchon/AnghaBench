
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_7__ {scalar_t__ freereg; } ;
typedef TYPE_1__ FuncState ;


 int exp2reg (TYPE_1__*,int *,scalar_t__) ;
 int freeexp (TYPE_1__*,int *) ;
 int luaK_dischargevars (TYPE_1__*,int *) ;
 int luaK_reserveregs (TYPE_1__*,int) ;

__attribute__((used)) static void luaK_exp2nextreg(FuncState*fs,expdesc*e){
luaK_dischargevars(fs,e);
freeexp(fs,e);
luaK_reserveregs(fs,1);
exp2reg(fs,e,fs->freereg-1);
}
