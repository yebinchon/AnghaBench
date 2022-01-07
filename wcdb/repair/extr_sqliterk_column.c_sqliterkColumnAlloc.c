
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int overflowPages; int values; } ;
typedef TYPE_1__ sqliterk_column ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int sqliterkColumnFree (TYPE_1__*) ;
 TYPE_1__* sqliterkOSMalloc (int) ;
 int sqliterkValuesAlloc (int *) ;

int sqliterkColumnAlloc(sqliterk_column **column)
{
    if (!column) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk_column *theColumn = sqliterkOSMalloc(sizeof(sqliterk_column));
    if (!theColumn) {
        rc = SQLITERK_NOMEM;
        goto sqliterkColumnAlloc_Failed;
    }
    rc = sqliterkValuesAlloc(&theColumn->values);
    if (rc != SQLITERK_OK) {
        goto sqliterkColumnAlloc_Failed;
    }
    rc = sqliterkValuesAlloc(&theColumn->overflowPages);
    if (rc != SQLITERK_OK) {
        goto sqliterkColumnAlloc_Failed;
    }
    *column = theColumn;
    return SQLITERK_OK;

sqliterkColumnAlloc_Failed:
    if (theColumn) {
        sqliterkColumnFree(theColumn);
    }
    *column = ((void*)0);
    return rc;
}
