
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;
typedef int Parse ;


 int OE_Abort ;


 int OP_Halt ;
 int OP_Integer ;
 int OP_MustBeInt ;
 int P4_STATIC ;
 int SQLITE_ERROR ;
 int VdbeCoverageIf (int *,int) ;
 int VdbeCoverageNeverNullIf (int *,int) ;
 int assert (int) ;
 int sqlite3GetTempReg (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3MayAbort (int *) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int,int) ;
 int sqlite3VdbeAppendP4 (int *,void*,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;

__attribute__((used)) static void windowCheckIntValue(Parse *pParse, int reg, int eCond){
  static const char *azErr[] = {
    "frame starting offset must be a non-negative integer",
    "frame ending offset must be a non-negative integer",
    "second argument to nth_value must be a positive integer"
  };
  static int aOp[] = { 129, 129, 128 };
  Vdbe *v = sqlite3GetVdbe(pParse);
  int regZero = sqlite3GetTempReg(pParse);
  assert( eCond==0 || eCond==1 || eCond==2 );
  sqlite3VdbeAddOp2(v, OP_Integer, 0, regZero);
  sqlite3VdbeAddOp2(v, OP_MustBeInt, reg, sqlite3VdbeCurrentAddr(v)+2);
  VdbeCoverageIf(v, eCond==0);
  VdbeCoverageIf(v, eCond==1);
  VdbeCoverageIf(v, eCond==2);
  sqlite3VdbeAddOp3(v, aOp[eCond], regZero, sqlite3VdbeCurrentAddr(v)+2, reg);
  VdbeCoverageNeverNullIf(v, eCond==0);
  VdbeCoverageNeverNullIf(v, eCond==1);
  VdbeCoverageNeverNullIf(v, eCond==2);
  sqlite3MayAbort(pParse);
  sqlite3VdbeAddOp2(v, OP_Halt, SQLITE_ERROR, OE_Abort);
  sqlite3VdbeAppendP4(v, (void*)azErr[eCond], P4_STATIC);
  sqlite3ReleaseTempReg(pParse, regZero);
}
