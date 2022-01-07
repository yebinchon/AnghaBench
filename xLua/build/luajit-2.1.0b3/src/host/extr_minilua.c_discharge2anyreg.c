
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ k; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_9__ {scalar_t__ freereg; } ;
typedef TYPE_2__ FuncState ;


 scalar_t__ VNONRELOC ;
 int discharge2reg (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 int luaK_reserveregs (TYPE_2__*,int) ;

__attribute__((used)) static void discharge2anyreg(FuncState*fs,expdesc*e){
if(e->k!=VNONRELOC){
luaK_reserveregs(fs,1);
discharge2reg(fs,e,fs->freereg-1);
}
}
