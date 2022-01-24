#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UCollator ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  icuCollationColl ; 
 int /*<<< orphan*/  icuCollationDel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *p, 
  int nArg, 
  sqlite3_value **apArg
){
  sqlite3 *db = (sqlite3 *)FUNC5(p);
  UErrorCode status = U_ZERO_ERROR;
  const char *zLocale;      /* Locale identifier - (eg. "jp_JP") */
  const char *zName;        /* SQL Collation sequence name (eg. "japanese") */
  UCollator *pUCollator;    /* ICU library collation object */
  int rc;                   /* Return code from sqlite3_create_collation_x() */

  FUNC1(nArg==2);
  (void)nArg; /* Unused parameter */
  zLocale = (const char *)FUNC6(apArg[0]);
  zName = (const char *)FUNC6(apArg[1]);

  if( !zLocale || !zName ){
    return;
  }

  pUCollator = FUNC8(zLocale, &status);
  if( !FUNC0(status) ){
    FUNC2(p, "ucol_open", status);
    return;
  }
  FUNC1(*p);

  rc = FUNC3(db, zName, SQLITE_UTF16, (void *)pUCollator, 
      icuCollationColl, icuCollationDel
  );
  if( rc!=SQLITE_OK ){
    FUNC7(pUCollator);
    FUNC4(p, "Error registering collation function", -1);
  }
}