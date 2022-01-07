
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Vdbe ;


 int memcpy (char*,int const*,int) ;
 char* sqlite3DbMallocRawNN (int ,int) ;
 int sqlite3VdbeAddOp4 (int *,int,int,int,int,char*,int) ;
 int sqlite3VdbeDb (int *) ;

int sqlite3VdbeAddOp4Dup8(
  Vdbe *p,
  int op,
  int p1,
  int p2,
  int p3,
  const u8 *zP4,
  int p4type
){
  char *p4copy = sqlite3DbMallocRawNN(sqlite3VdbeDb(p), 8);
  if( p4copy ) memcpy(p4copy, zP4, 8);
  return sqlite3VdbeAddOp4(p, op, p1, p2, p3, p4copy, p4type);
}
