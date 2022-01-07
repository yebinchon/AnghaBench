
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int i8 ;
typedef int Vdbe ;
typedef int Parse ;


 int OE_Abort ;
 int OP_Halt ;
 int SQLITE_CONSTRAINT ;
 int assert (int) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3MayAbort (int *) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int ,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;

void sqlite3HaltConstraint(
  Parse *pParse,
  int errCode,
  int onError,
  char *p4,
  i8 p4type,
  u8 p5Errmsg
){
  Vdbe *v = sqlite3GetVdbe(pParse);
  assert( (errCode&0xff)==SQLITE_CONSTRAINT );
  if( onError==OE_Abort ){
    sqlite3MayAbort(pParse);
  }
  sqlite3VdbeAddOp4(v, OP_Halt, errCode, onError, 0, p4, p4type);
  sqlite3VdbeChangeP5(v, p5Errmsg);
}
