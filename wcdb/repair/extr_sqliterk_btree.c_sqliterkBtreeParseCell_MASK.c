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
typedef  int /*<<< orphan*/  sqliterk_page ;
typedef  int /*<<< orphan*/  sqliterk_column ;
typedef  int /*<<< orphan*/  sqliterk_btree ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int SQLITERK_CANCELLED ; 
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned char const*,int,int*,int*) ; 
 int FUNC8 (unsigned char const*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(sqliterk_btree *btree,
                                  sqliterk_page *page,
                                  const int *cellPointerArray,
                                  const int cellsCount)
{
    if (!btree || !page || !cellPointerArray || cellsCount < 0) {
        return SQLITERK_MISUSE;
    }
    const unsigned char *pagedata = FUNC6(page);
    int rc = SQLITERK_OK;
    sqliterk_column *column;
    rc = FUNC1(&column);
    if (rc != SQLITERK_OK) {
        goto sqliterkBtreeParsePayload_End;
    }

    int i;
    for (i = 0; i < cellsCount; i++) {
        FUNC2(column);
        int offset = cellPointerArray[i];
        // Find payload
        int payloadSizeLength;
        int payloadSize;
        rc = FUNC7(pagedata, offset, &payloadSizeLength,
                                 &payloadSize);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeParsePayload_End;
        }
        offset += payloadSizeLength;

        int rowidLength;
        int64_t rowid;
        rc = FUNC8(pagedata, offset, &rowidLength, &rowid);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeParsePayload_End;
        }
        offset += rowidLength;
        FUNC4(column, rowid);

        rc =
            FUNC0(btree, page, offset, payloadSize, column);
        if (rc != SQLITERK_OK) {
            goto sqliterkBtreeParsePayload_End;
        }
    }
sqliterkBtreeParsePayload_End:
    if (column) {
        FUNC3(column);
    }
    if (rc != SQLITERK_OK && rc != SQLITERK_CANCELLED) {
        FUNC5(rc, "Failed to parse payload.");
    }
    return rc;
}