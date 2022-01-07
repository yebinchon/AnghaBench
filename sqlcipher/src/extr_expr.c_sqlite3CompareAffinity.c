
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 char SQLITE_AFF_BLOB ;
 char SQLITE_AFF_NUMERIC ;
 int assert (int) ;
 char sqlite3ExprAffinity (int *) ;
 scalar_t__ sqlite3IsNumericAffinity (char) ;

char sqlite3CompareAffinity(Expr *pExpr, char aff2){
  char aff1 = sqlite3ExprAffinity(pExpr);
  if( aff1 && aff2 ){



    if( sqlite3IsNumericAffinity(aff1) || sqlite3IsNumericAffinity(aff2) ){
      return SQLITE_AFF_NUMERIC;
    }else{
      return SQLITE_AFF_BLOB;
    }
  }else if( !aff1 && !aff2 ){



    return SQLITE_AFF_BLOB;
  }else{

    assert( aff1==0 || aff2==0 );
    return (aff1 + aff2);
  }
}
