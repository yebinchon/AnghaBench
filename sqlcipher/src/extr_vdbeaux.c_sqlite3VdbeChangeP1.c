
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int Vdbe ;
struct TYPE_2__ {int p1; } ;


 TYPE_1__* sqlite3VdbeGetOp (int *,int ) ;

void sqlite3VdbeChangeP1(Vdbe *p, u32 addr, int val){
  sqlite3VdbeGetOp(p,addr)->p1 = val;
}
