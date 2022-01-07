
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_values ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int * sqliterkOSMalloc (int) ;
 int sqliterkValuesAutoGrow (int *) ;
 int sqliterkValuesFree (int *) ;

int sqliterkValuesAlloc(sqliterk_values **values)
{
    if (!values) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk_values *theValues = sqliterkOSMalloc(sizeof(sqliterk_values));
    if (!theValues) {
        rc = SQLITERK_NOMEM;
        goto sqliterkValuesAlloc_Failed;
    }
    rc = sqliterkValuesAutoGrow(theValues);
    if (rc != SQLITERK_OK) {
        goto sqliterkValuesAlloc_Failed;
    }
    *values = theValues;
    return SQLITERK_OK;
sqliterkValuesAlloc_Failed:
    if (theValues) {
        sqliterkValuesFree(theValues);
    }
    return rc;
}
