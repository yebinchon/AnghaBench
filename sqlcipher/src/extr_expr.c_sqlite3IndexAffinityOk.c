
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;




 char comparisonAffinity (int *) ;
 int sqlite3IsNumericAffinity (char) ;

int sqlite3IndexAffinityOk(Expr *pExpr, char idx_affinity){
  char aff = comparisonAffinity(pExpr);
  switch( aff ){
    case 129:
      return 1;
    case 128:
      return idx_affinity==128;
    default:
      return sqlite3IsNumericAffinity(idx_affinity);
  }
}
