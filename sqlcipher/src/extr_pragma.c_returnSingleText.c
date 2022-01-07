
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int OP_ResultRow ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeLoadString (int *,int,char const*) ;

__attribute__((used)) static void returnSingleText(
  Vdbe *v,
  const char *zValue
){
  if( zValue ){
    sqlite3VdbeLoadString(v, 1, (const char*)zValue);
    sqlite3VdbeAddOp2(v, OP_ResultRow, 1, 1);
  }
}
