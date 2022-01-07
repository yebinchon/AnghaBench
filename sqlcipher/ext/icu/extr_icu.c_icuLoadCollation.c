
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int UErrorCode ;
typedef int UCollator ;


 int SQLITE_OK ;
 int SQLITE_UTF16 ;
 int U_SUCCESS (int ) ;
 int U_ZERO_ERROR ;
 int assert (int) ;
 int icuCollationColl ;
 int icuCollationDel ;
 int icuFunctionError (int *,char*,int ) ;
 int sqlite3_create_collation_v2 (int *,char const*,int ,void*,int ,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int ucol_close (int *) ;
 int * ucol_open (char const*,int *) ;

__attribute__((used)) static void icuLoadCollation(
  sqlite3_context *p,
  int nArg,
  sqlite3_value **apArg
){
  sqlite3 *db = (sqlite3 *)sqlite3_user_data(p);
  UErrorCode status = U_ZERO_ERROR;
  const char *zLocale;
  const char *zName;
  UCollator *pUCollator;
  int rc;

  assert(nArg==2);
  (void)nArg;
  zLocale = (const char *)sqlite3_value_text(apArg[0]);
  zName = (const char *)sqlite3_value_text(apArg[1]);

  if( !zLocale || !zName ){
    return;
  }

  pUCollator = ucol_open(zLocale, &status);
  if( !U_SUCCESS(status) ){
    icuFunctionError(p, "ucol_open", status);
    return;
  }
  assert(p);

  rc = sqlite3_create_collation_v2(db, zName, SQLITE_UTF16, (void *)pUCollator,
      icuCollationColl, icuCollationDel
  );
  if( rc!=SQLITE_OK ){
    ucol_close(pUCollator);
    sqlite3_result_error(p, "Error registering collation function", -1);
  }
}
