
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int Vdbe ;
struct TYPE_2__ {int opcode; } ;


 TYPE_1__* sqlite3VdbeGetOp (int *,int ) ;

void sqlite3VdbeChangeOpcode(Vdbe *p, u32 addr, u8 iNewOpcode){
  sqlite3VdbeGetOp(p,addr)->opcode = iNewOpcode;
}
