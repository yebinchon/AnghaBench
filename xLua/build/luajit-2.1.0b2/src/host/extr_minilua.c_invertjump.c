
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int info; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int Instruction ;
typedef int FuncState ;


 int GETARG_A (int ) ;
 int SETARG_A (int ,int) ;
 int * getjumpcontrol (int *,int ) ;

__attribute__((used)) static void invertjump(FuncState*fs,expdesc*e){
Instruction*pc=getjumpcontrol(fs,e->u.s.info);
SETARG_A(*pc,!(GETARG_A(*pc)));
}
