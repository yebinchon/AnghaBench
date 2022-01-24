#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pagesize; int integrity; int freepagecount; int reservedBytes; int pagecount; size_t usableSize; int /*<<< orphan*/  file; scalar_t__ codec; } ;
typedef  TYPE_1__ sqliterk_pager ;

/* Variables and functions */
 int SQLITERK_DAMAGED ; 
 int SQLITERK_INTEGRITY_HEADER ; 
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 int SQLITERK_SHORT_READ ; 
 void* SQLITRK_CONFIG_DEFAULT_PAGESIZE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (unsigned char*,char*,int) ; 
 int FUNC1 (scalar_t__,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(sqliterk_pager *pager, int forcePageSize)
{
    // For encrypted databases, assume default page size, decode the first
    // page, and we have the plain-text header.

    if (!pager) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;

    // Overwrite pager page size if forcePageSize is specified.
    if (forcePageSize) {
        pager->pagesize = forcePageSize;
    }

    size_t size = pager->codec ? pager->pagesize : 100;

    // Read data
    unsigned char *buffer = FUNC6(size);
    if (!buffer) {
        rc = SQLITERK_NOMEM;
        FUNC2(rc, "Not enough memory, required %zu bytes.", size);
        goto sqliterkPagerParseHeader_End;
    }

    rc = FUNC7(pager->file, 0, buffer, &size);
    if (rc != SQLITERK_OK) {
        if (rc == SQLITERK_SHORT_READ)
            FUNC2(rc, "File truncated.");
        else
            FUNC2(rc, "Cannot read file '%s': %s",
                            FUNC5(pager->file),
                            FUNC10(errno));
        pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
        goto sqliterkPagerParseHeader_End;
    }

    pager->integrity |= SQLITERK_INTEGRITY_HEADER;

    if (pager->codec) {
        rc = FUNC1(pager->codec, 1, buffer);
        if (rc != SQLITERK_OK) {
            FUNC8(SQLITERK_DAMAGED,
                              "Failed to decode page 1, header corrupted.");
            pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
        }
    }

    if (pager->integrity & SQLITERK_INTEGRITY_HEADER) {
        if (FUNC0(buffer, "SQLite format 3\000", 16) == 0) {
            //parse pagesize
            int pagesize;
            FUNC9(buffer, 16, 2, &pagesize);
            if (pager->codec || forcePageSize) {
                // Page size is predefined, check whether it matches the header.
                if (pagesize != pager->pagesize) {
                    FUNC8(
                        SQLITERK_DAMAGED,
                        "Invalid page size: %d expected, %d returned.",
                        pager->pagesize, pagesize);
                    pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
                }
            } else if (((pagesize - 1) & pagesize) != 0 || pagesize < 512) {
                // Page size is not predefined and value in the header is invalid,
                // use the default page size.
                FUNC8(SQLITERK_DAMAGED,
                                  "Page size field is corrupted. Default page "
                                  "size %d is used",
                                  SQLITRK_CONFIG_DEFAULT_PAGESIZE);
                pager->pagesize = SQLITRK_CONFIG_DEFAULT_PAGESIZE;
                pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
            } else {
                // Page size is not predefined and value in the header is valid,
                // use the value in header.
                pager->pagesize = pagesize;
            }

            // parse free page count
            FUNC9(buffer, 36, 4, &pager->freepagecount);

            // parse reserved bytes
            int reservedBytes;
            FUNC9(buffer, 20, 1, &reservedBytes);
            if (pager->codec) {
                if (reservedBytes != pager->reservedBytes) {
                    FUNC8(SQLITERK_DAMAGED,
                                      "Reserved bytes field doesn't match. %d "
                                      "expected, %d returned.",
                                      pager->reservedBytes, reservedBytes);
                    pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
                }
            } else if (reservedBytes < 0 || reservedBytes > 255) {
                FUNC8(
                    SQLITERK_DAMAGED,
                    "The [reserved bytes] field is corrupted. 0 is used");
                pager->reservedBytes = 0;
                pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
            } else
                pager->reservedBytes = reservedBytes;
        } else {
            // Header is corrupted. Defaults the config
            FUNC8(SQLITERK_DAMAGED,
                              "SQLite format magic corrupted.");
            if (!pager->codec) {
                pager->pagesize = SQLITRK_CONFIG_DEFAULT_PAGESIZE;
                pager->reservedBytes = 0;
            }
            pager->freepagecount = 0;
            pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
        }
    }

    // Assign page count
    size_t filesize;
    rc = FUNC3(pager->file, &filesize);
    if (rc != SQLITERK_OK) {
        FUNC2(rc, "Failed to get size of file '%s': %s",
                        FUNC5(pager->file), FUNC10(errno));
        goto sqliterkPagerParseHeader_End;
    }

    pager->pagecount =
        (int) ((filesize + pager->pagesize - 1) / pager->pagesize);
    if (pager->pagecount < 1) {
        rc = SQLITERK_DAMAGED;
        FUNC2(rc, "File truncated.");
        goto sqliterkPagerParseHeader_End;
    }

    // Check free page
    if (pager->freepagecount < 0 || pager->freepagecount > pager->pagecount) {
        FUNC8(
            SQLITERK_DAMAGED,
            "The [free page count] field is corrupted. 0 is used");
        pager->freepagecount = 0;
        pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
    }

    // Assign usableSize
    pager->usableSize = pager->pagesize - pager->reservedBytes;

sqliterkPagerParseHeader_End:
    if (buffer) {
        FUNC4(buffer);
    }
    return rc;
}