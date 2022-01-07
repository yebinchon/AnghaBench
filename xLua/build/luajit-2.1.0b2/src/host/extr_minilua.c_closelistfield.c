
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ k; } ;
struct ConsControl {int tostore; int na; TYPE_1__* t; TYPE_4__ v; } ;
struct TYPE_7__ {int info; } ;
struct TYPE_6__ {TYPE_3__ s; } ;
struct TYPE_5__ {TYPE_2__ u; } ;
typedef int FuncState ;


 scalar_t__ VVOID ;
 int luaK_exp2nextreg (int *,TYPE_4__*) ;
 int luaK_setlist (int *,int ,int ,int) ;

__attribute__((used)) static void closelistfield(FuncState*fs,struct ConsControl*cc){
if(cc->v.k==VVOID)return;
luaK_exp2nextreg(fs,&cc->v);
cc->v.k=VVOID;
if(cc->tostore==50){
luaK_setlist(fs,cc->t->u.s.info,cc->na,cc->tostore);
cc->tostore=0;
}
}
