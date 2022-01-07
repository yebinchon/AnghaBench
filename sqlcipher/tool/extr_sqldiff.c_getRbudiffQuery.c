
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Str ;


 int strPrintf (int *,char*,...) ;
 int strPrintfArray (int *,char*,char*,char**,int) ;

__attribute__((used)) static void getRbudiffQuery(
  const char *zTab,
  char **azCol,
  int nPK,
  int bOtaRowid,
  Str *pSql
){
  int i;


  strPrintf(pSql, "SELECT ");
  strPrintfArray(pSql, ", ", "%s", azCol, -1);
  strPrintf(pSql, ", 0, ");
  strPrintfArray(pSql, ", ", "NULL", azCol, -1);
  strPrintf(pSql, " FROM aux.%Q AS n WHERE NOT EXISTS (\n", zTab);
  strPrintf(pSql, "    SELECT 1 FROM ", zTab);
  strPrintf(pSql, " main.%Q AS o WHERE ", zTab);
  strPrintfArray(pSql, " AND ", "(n.%Q = o.%Q)", azCol, nPK);
  strPrintf(pSql, "\n) AND ");
  strPrintfArray(pSql, " AND ", "(n.%Q IS NOT NULL)", azCol, nPK);


  strPrintf(pSql, "\nUNION ALL\nSELECT ");
  strPrintfArray(pSql, ", ", "%s", azCol, nPK);
  if( azCol[nPK] ){
    strPrintf(pSql, ", ");
    strPrintfArray(pSql, ", ", "NULL", &azCol[nPK], -1);
  }
  strPrintf(pSql, ", 1, ");
  strPrintfArray(pSql, ", ", "NULL", azCol, -1);
  strPrintf(pSql, " FROM main.%Q AS n WHERE NOT EXISTS (\n", zTab);
  strPrintf(pSql, "    SELECT 1 FROM ", zTab);
  strPrintf(pSql, " aux.%Q AS o WHERE ", zTab);
  strPrintfArray(pSql, " AND ", "(n.%Q = o.%Q)", azCol, nPK);
  strPrintf(pSql, "\n) AND ");
  strPrintfArray(pSql, " AND ", "(n.%Q IS NOT NULL)", azCol, nPK);




  if( azCol[nPK] ){
    strPrintf(pSql, "\nUNION ALL\nSELECT ");
    strPrintfArray(pSql, ", ", "n.%s", azCol, nPK);
    strPrintf(pSql, ",\n");
    strPrintfArray(pSql, " ,\n",
        "    CASE WHEN n.%s IS o.%s THEN NULL ELSE n.%s END", &azCol[nPK], -1
    );

    if( bOtaRowid==0 ){
      strPrintf(pSql, ", '");
      strPrintfArray(pSql, "", ".", azCol, nPK);
      strPrintf(pSql, "' ||\n");
    }else{
      strPrintf(pSql, ",\n");
    }
    strPrintfArray(pSql, " ||\n",
        "    CASE WHEN n.%s IS o.%s THEN '.' ELSE 'x' END", &azCol[nPK], -1
    );
    strPrintf(pSql, "\nAS ota_control, ");
    strPrintfArray(pSql, ", ", "NULL", azCol, nPK);
    strPrintf(pSql, ",\n");
    strPrintfArray(pSql, " ,\n",
        "    CASE WHEN n.%s IS o.%s THEN NULL ELSE o.%s END", &azCol[nPK], -1
    );

    strPrintf(pSql, "\nFROM main.%Q AS o, aux.%Q AS n\nWHERE ", zTab, zTab);
    strPrintfArray(pSql, " AND ", "(n.%Q = o.%Q)", azCol, nPK);
    strPrintf(pSql, " AND ota_control LIKE '%%x%%'");
  }


  strPrintf(pSql, "\nORDER BY ");
  for(i=1; i<=nPK; i++) strPrintf(pSql, "%s%d", ((i>1)?", ":""), i);
}
