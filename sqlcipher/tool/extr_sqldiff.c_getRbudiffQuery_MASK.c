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
typedef  int /*<<< orphan*/  Str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char**,int) ; 

__attribute__((used)) static void FUNC2(
  const char *zTab,
  char **azCol,
  int nPK,
  int bOtaRowid,
  Str *pSql
){
  int i;

  /* First the newly inserted rows: **/ 
  FUNC0(pSql, "SELECT ");
  FUNC1(pSql, ", ", "%s", azCol, -1);
  FUNC0(pSql, ", 0, ");       /* Set ota_control to 0 for an insert */
  FUNC1(pSql, ", ", "NULL", azCol, -1);
  FUNC0(pSql, " FROM aux.%Q AS n WHERE NOT EXISTS (\n", zTab);
  FUNC0(pSql, "    SELECT 1 FROM ", zTab);
  FUNC0(pSql, " main.%Q AS o WHERE ", zTab);
  FUNC1(pSql, " AND ", "(n.%Q = o.%Q)", azCol, nPK);
  FUNC0(pSql, "\n) AND ");
  FUNC1(pSql, " AND ", "(n.%Q IS NOT NULL)", azCol, nPK);

  /* Deleted rows: */
  FUNC0(pSql, "\nUNION ALL\nSELECT ");
  FUNC1(pSql, ", ", "%s", azCol, nPK);
  if( azCol[nPK] ){
    FUNC0(pSql, ", ");
    FUNC1(pSql, ", ", "NULL", &azCol[nPK], -1);
  }
  FUNC0(pSql, ", 1, ");       /* Set ota_control to 1 for a delete */
  FUNC1(pSql, ", ", "NULL", azCol, -1);
  FUNC0(pSql, " FROM main.%Q AS n WHERE NOT EXISTS (\n", zTab);
  FUNC0(pSql, "    SELECT 1 FROM ", zTab);
  FUNC0(pSql, " aux.%Q AS o WHERE ", zTab);
  FUNC1(pSql, " AND ", "(n.%Q = o.%Q)", azCol, nPK);
  FUNC0(pSql, "\n) AND ");
  FUNC1(pSql, " AND ", "(n.%Q IS NOT NULL)", azCol, nPK);

  /* Updated rows. If all table columns are part of the primary key, there 
  ** can be no updates. In this case this part of the compound SELECT can
  ** be omitted altogether. */
  if( azCol[nPK] ){
    FUNC0(pSql, "\nUNION ALL\nSELECT ");
    FUNC1(pSql, ", ", "n.%s", azCol, nPK);
    FUNC0(pSql, ",\n");
    FUNC1(pSql, " ,\n", 
        "    CASE WHEN n.%s IS o.%s THEN NULL ELSE n.%s END", &azCol[nPK], -1
    );

    if( bOtaRowid==0 ){
      FUNC0(pSql, ", '");
      FUNC1(pSql, "", ".", azCol, nPK);
      FUNC0(pSql, "' ||\n");
    }else{
      FUNC0(pSql, ",\n");
    }
    FUNC1(pSql, " ||\n", 
        "    CASE WHEN n.%s IS o.%s THEN '.' ELSE 'x' END", &azCol[nPK], -1
    );
    FUNC0(pSql, "\nAS ota_control, ");
    FUNC1(pSql, ", ", "NULL", azCol, nPK);
    FUNC0(pSql, ",\n");
    FUNC1(pSql, " ,\n", 
        "    CASE WHEN n.%s IS o.%s THEN NULL ELSE o.%s END", &azCol[nPK], -1
    );

    FUNC0(pSql, "\nFROM main.%Q AS o, aux.%Q AS n\nWHERE ", zTab, zTab);
    FUNC1(pSql, " AND ", "(n.%Q = o.%Q)", azCol, nPK);
    FUNC0(pSql, " AND ota_control LIKE '%%x%%'");
  }

  /* Now add an ORDER BY clause to sort everything by PK. */
  FUNC0(pSql, "\nORDER BY ");
  for(i=1; i<=nPK; i++) FUNC0(pSql, "%s%d", ((i>1)?", ":""), i);
}