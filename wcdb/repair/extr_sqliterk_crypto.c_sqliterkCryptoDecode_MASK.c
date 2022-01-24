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
typedef  int /*<<< orphan*/  sqliterk_codec ;

/* Variables and functions */
 int /*<<< orphan*/  CIPHER_DECRYPT ; 
 int /*<<< orphan*/  CIPHER_READ_CTX ; 
 int /*<<< orphan*/  SQLITERK_DAMAGED ; 
 int SQLITERK_OK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

int FUNC7(sqliterk_codec *codec, int pgno, void *data)
{
    int rc;
    int offset = 0;
    unsigned char *pdata = (unsigned char *) data;

    int page_sz = FUNC2(codec);
    unsigned char *buffer =
        (unsigned char *) FUNC1(codec);

    rc = FUNC3(codec);
    if (rc != SQLITE_OK)
        return rc;

    if (pgno == 1) {
        offset = 16; // FILE_HEADER_SZ
        FUNC0(buffer, "SQLite format 3", 16);
    }
    rc = FUNC4(codec, CIPHER_READ_CTX, pgno, CIPHER_DECRYPT,
                               page_sz - offset, pdata + offset,
                               buffer + offset);
    if (rc != SQLITE_OK)
        goto bail;
    FUNC0(pdata, buffer, page_sz);

    return SQLITERK_OK;

bail:
    FUNC6(SQLITERK_DAMAGED, "Failed to decode page %d: %s", pgno,
                    FUNC5(rc));
    return rc;
}