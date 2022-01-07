
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int sqlite3VdbeAddOp3 (int *,int,int,int,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char const*,int) ;

int sqlite3VdbeAddOp4(
  Vdbe *p,
  int op,
  int p1,
  int p2,
  int p3,
  const char *zP4,
  int p4type
){
  int addr = sqlite3VdbeAddOp3(p, op, p1, p2, p3);
  sqlite3VdbeChangeP4(p, addr, zP4, p4type);
  return addr;
}
