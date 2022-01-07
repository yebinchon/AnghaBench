
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_codec ;


 int CIPHER_DECRYPT ;
 int CIPHER_READ_CTX ;
 int SQLITERK_DAMAGED ;
 int SQLITERK_OK ;
 int SQLITE_OK ;
 int memcpy (unsigned char*,...) ;
 scalar_t__ sqlcipher_codec_ctx_get_data (int *) ;
 int sqlcipher_codec_ctx_get_pagesize (int *) ;
 int sqlcipher_codec_key_derive (int *) ;
 int sqlcipher_page_cipher (int *,int ,int,int ,int,unsigned char*,unsigned char*) ;
 int sqlite3_errstr (int) ;
 int sqliterkOSError (int ,char*,int,int ) ;

int sqliterkCryptoDecode(sqliterk_codec *codec, int pgno, void *data)
{
    int rc;
    int offset = 0;
    unsigned char *pdata = (unsigned char *) data;

    int page_sz = sqlcipher_codec_ctx_get_pagesize(codec);
    unsigned char *buffer =
        (unsigned char *) sqlcipher_codec_ctx_get_data(codec);

    rc = sqlcipher_codec_key_derive(codec);
    if (rc != SQLITE_OK)
        return rc;

    if (pgno == 1) {
        offset = 16;
        memcpy(buffer, "SQLite format 3", 16);
    }
    rc = sqlcipher_page_cipher(codec, CIPHER_READ_CTX, pgno, CIPHER_DECRYPT,
                               page_sz - offset, pdata + offset,
                               buffer + offset);
    if (rc != SQLITE_OK)
        goto bail;
    memcpy(pdata, buffer, page_sz);

    return SQLITERK_OK;

bail:
    sqliterkOSError(SQLITERK_DAMAGED, "Failed to decode page %d: %s", pgno,
                    sqlite3_errstr(rc));
    return rc;
}
