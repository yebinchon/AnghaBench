
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_page ;
typedef int sqliterk_column ;
typedef int sqliterk_btree ;
typedef int int64_t ;


 int SQLITERK_CANCELLED ;
 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int sqliterkBtreeParsePayload (int *,int *,int,int,int *) ;
 int sqliterkColumnAlloc (int **) ;
 int sqliterkColumnClear (int *) ;
 int sqliterkColumnFree (int *) ;
 int sqliterkColumnSetRowId (int *,int ) ;
 int sqliterkOSDebug (int,char*) ;
 unsigned char* sqliterkPageGetData (int *) ;
 int sqliterkParseVarint (unsigned char const*,int,int*,int*) ;
 int sqliterkParseVarint64 (unsigned char const*,int,int*,int *) ;

__attribute__((used)) static int sqliterkBtreeParseCell(sqliterk_btree *btree,
                                  sqliterk_page *page,
                                  const int *cellPointerArray,
                                  const int cellsCount)
{
    if (!btree || !page || !cellPointerArray || cellsCount < 0) {
        return SQLITERK_MISUSE;
    }
    const unsigned char *pagedata = sqliterkPageGetData(page);
    int rc = SQLITERK_OK;
    sqliterk_column *column;
    rc = sqliterkColumnAlloc(&column);
    if (rc != SQLITERK_OK) {
        goto sqliterkBtreeParsePayload_End;
    }

    int i;
    for (i = 0; i < cellsCount; i++) {
        sqliterkColumnClear(column);
        int offset = cellPointerArray[i];

        int payloadSizeLength;
        int payloadSize;
        rc = sqliterkParseVarint(pagedata, offset, &payloadSizeLength,
                                 &payloadSize);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeParsePayload_End;
        }
        offset += payloadSizeLength;

        int rowidLength;
        int64_t rowid;
        rc = sqliterkParseVarint64(pagedata, offset, &rowidLength, &rowid);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeParsePayload_End;
        }
        offset += rowidLength;
        sqliterkColumnSetRowId(column, rowid);

        rc =
            sqliterkBtreeParsePayload(btree, page, offset, payloadSize, column);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeParsePayload_End;
        }
    }
sqliterkBtreeParsePayload_End:
    if (column) {
        sqliterkColumnFree(column);
    }
    if (rc != SQLITERK_OK && rc != SQLITERK_CANCELLED) {
        sqliterkOSDebug(rc, "Failed to parse payload.");
    }
    return rc;
}
