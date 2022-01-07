
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int URegularExpression ;
typedef int UErrorCode ;
typedef int UChar ;
typedef scalar_t__ UBool ;


 scalar_t__ U_SUCCESS (int ) ;
 int U_ZERO_ERROR ;
 int assert (int) ;
 int icuFunctionError (int *,char*,int ) ;
 int icuRegexpDelete ;
 int * sqlite3_get_auxdata (int *,int ) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_set_auxdata (int *,int ,int *,int ) ;
 int * sqlite3_value_text16 (int *) ;
 scalar_t__ uregex_matches (int *,int ,int *) ;
 int * uregex_open (int const*,int,int ,int ,int *) ;
 int uregex_setText (int *,int const*,int,int *) ;

__attribute__((used)) static void icuRegexpFunc(sqlite3_context *p, int nArg, sqlite3_value **apArg){
  UErrorCode status = U_ZERO_ERROR;
  URegularExpression *pExpr;
  UBool res;
  const UChar *zString = sqlite3_value_text16(apArg[1]);

  (void)nArg;




  if( !zString ){
    return;
  }

  pExpr = sqlite3_get_auxdata(p, 0);
  if( !pExpr ){
    const UChar *zPattern = sqlite3_value_text16(apArg[0]);
    if( !zPattern ){
      return;
    }
    pExpr = uregex_open(zPattern, -1, 0, 0, &status);

    if( U_SUCCESS(status) ){
      sqlite3_set_auxdata(p, 0, pExpr, icuRegexpDelete);
    }else{
      assert(!pExpr);
      icuFunctionError(p, "uregex_open", status);
      return;
    }
  }


  uregex_setText(pExpr, zString, -1, &status);
  if( !U_SUCCESS(status) ){
    icuFunctionError(p, "uregex_setText", status);
    return;
  }


  res = uregex_matches(pExpr, 0, &status);
  if( !U_SUCCESS(status) ){
    icuFunctionError(p, "uregex_matches", status);
    return;
  }






  uregex_setText(pExpr, 0, 0, &status);


  sqlite3_result_int(p, res ? 1 : 0);
}
