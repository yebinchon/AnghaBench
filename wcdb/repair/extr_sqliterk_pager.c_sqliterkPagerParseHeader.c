
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pagesize; int integrity; int freepagecount; int reservedBytes; int pagecount; size_t usableSize; int file; scalar_t__ codec; } ;
typedef TYPE_1__ sqliterk_pager ;


 int SQLITERK_DAMAGED ;
 int SQLITERK_INTEGRITY_HEADER ;
 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int SQLITERK_SHORT_READ ;
 void* SQLITRK_CONFIG_DEFAULT_PAGESIZE ;
 int errno ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int sqliterkCryptoDecode (scalar_t__,int,unsigned char*) ;
 int sqliterkOSError (int,char*,...) ;
 int sqliterkOSFileSize (int ,size_t*) ;
 int sqliterkOSFree (unsigned char*) ;
 int sqliterkOSGetFilePath (int ) ;
 unsigned char* sqliterkOSMalloc (size_t) ;
 int sqliterkOSRead (int ,int ,unsigned char*,size_t*) ;
 int sqliterkOSWarning (int,char*,...) ;
 int sqliterkParseInt (unsigned char*,int,int,int*) ;
 int strerror (int ) ;

__attribute__((used)) static int sqliterkPagerParseHeader(sqliterk_pager *pager, int forcePageSize)
{



    if (!pager) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;


    if (forcePageSize) {
        pager->pagesize = forcePageSize;
    }

    size_t size = pager->codec ? pager->pagesize : 100;


    unsigned char *buffer = sqliterkOSMalloc(size);
    if (!buffer) {
        rc = SQLITERK_NOMEM;
        sqliterkOSError(rc, "Not enough memory, required %zu bytes.", size);
        goto sqliterkPagerParseHeader_End;
    }

    rc = sqliterkOSRead(pager->file, 0, buffer, &size);
    if (rc != SQLITERK_OK) {
        if (rc == SQLITERK_SHORT_READ)
            sqliterkOSError(rc, "File truncated.");
        else
            sqliterkOSError(rc, "Cannot read file '%s': %s",
                            sqliterkOSGetFilePath(pager->file),
                            strerror(errno));
        pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
        goto sqliterkPagerParseHeader_End;
    }

    pager->integrity |= SQLITERK_INTEGRITY_HEADER;

    if (pager->codec) {
        rc = sqliterkCryptoDecode(pager->codec, 1, buffer);
        if (rc != SQLITERK_OK) {
            sqliterkOSWarning(SQLITERK_DAMAGED,
                              "Failed to decode page 1, header corrupted.");
            pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
        }
    }

    if (pager->integrity & SQLITERK_INTEGRITY_HEADER) {
        if (memcmp(buffer, "SQLite format 3\000", 16) == 0) {

            int pagesize;
            sqliterkParseInt(buffer, 16, 2, &pagesize);
            if (pager->codec || forcePageSize) {

                if (pagesize != pager->pagesize) {
                    sqliterkOSWarning(
                        SQLITERK_DAMAGED,
                        "Invalid page size: %d expected, %d returned.",
                        pager->pagesize, pagesize);
                    pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
                }
            } else if (((pagesize - 1) & pagesize) != 0 || pagesize < 512) {


                sqliterkOSWarning(SQLITERK_DAMAGED,
                                  "Page size field is corrupted. Default page "
                                  "size %d is used",
                                  SQLITRK_CONFIG_DEFAULT_PAGESIZE);
                pager->pagesize = SQLITRK_CONFIG_DEFAULT_PAGESIZE;
                pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
            } else {


                pager->pagesize = pagesize;
            }


            sqliterkParseInt(buffer, 36, 4, &pager->freepagecount);


            int reservedBytes;
            sqliterkParseInt(buffer, 20, 1, &reservedBytes);
            if (pager->codec) {
                if (reservedBytes != pager->reservedBytes) {
                    sqliterkOSWarning(SQLITERK_DAMAGED,
                                      "Reserved bytes field doesn't match. %d "
                                      "expected, %d returned.",
                                      pager->reservedBytes, reservedBytes);
                    pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
                }
            } else if (reservedBytes < 0 || reservedBytes > 255) {
                sqliterkOSWarning(
                    SQLITERK_DAMAGED,
                    "The [reserved bytes] field is corrupted. 0 is used");
                pager->reservedBytes = 0;
                pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
            } else
                pager->reservedBytes = reservedBytes;
        } else {

            sqliterkOSWarning(SQLITERK_DAMAGED,
                              "SQLite format magic corrupted.");
            if (!pager->codec) {
                pager->pagesize = SQLITRK_CONFIG_DEFAULT_PAGESIZE;
                pager->reservedBytes = 0;
            }
            pager->freepagecount = 0;
            pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
        }
    }


    size_t filesize;
    rc = sqliterkOSFileSize(pager->file, &filesize);
    if (rc != SQLITERK_OK) {
        sqliterkOSError(rc, "Failed to get size of file '%s': %s",
                        sqliterkOSGetFilePath(pager->file), strerror(errno));
        goto sqliterkPagerParseHeader_End;
    }

    pager->pagecount =
        (int) ((filesize + pager->pagesize - 1) / pager->pagesize);
    if (pager->pagecount < 1) {
        rc = SQLITERK_DAMAGED;
        sqliterkOSError(rc, "File truncated.");
        goto sqliterkPagerParseHeader_End;
    }


    if (pager->freepagecount < 0 || pager->freepagecount > pager->pagecount) {
        sqliterkOSWarning(
            SQLITERK_DAMAGED,
            "The [free page count] field is corrupted. 0 is used");
        pager->freepagecount = 0;
        pager->integrity &= ~SQLITERK_INTEGRITY_HEADER;
    }


    pager->usableSize = pager->pagesize - pager->reservedBytes;

sqliterkPagerParseHeader_End:
    if (buffer) {
        sqliterkOSFree(buffer);
    }
    return rc;
}
