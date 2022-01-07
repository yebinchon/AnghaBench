
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int OP_String8 ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char const*,int ) ;

int sqlite3VdbeLoadString(Vdbe *p, int iDest, const char *zStr){
  return sqlite3VdbeAddOp4(p, OP_String8, 0, iDest, 0, zStr, 0);
}
