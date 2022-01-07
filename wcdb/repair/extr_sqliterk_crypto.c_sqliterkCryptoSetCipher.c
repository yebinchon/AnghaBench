
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pagesize; int reservedBytes; int * codec; } ;
typedef TYPE_1__ sqliterk_pager ;
typedef int sqliterk_file ;
struct TYPE_6__ {int kdf_iter; int use_hmac; int page_size; scalar_t__ kdf_salt; int key_len; int key; } ;
typedef TYPE_2__ sqliterk_cipher_conf ;
typedef int codec_ctx ;


 int SQLITERK_CANTOPEN ;
 int SQLITERK_MISUSE ;
 int SQLITERK_OK ;
 int SQLITE_OK ;
 int sqlcipher_activate () ;
 int sqlcipher_codec_ctx_free (int **) ;
 int sqlcipher_codec_ctx_get_pagesize (int *) ;
 int sqlcipher_codec_ctx_get_reservesize (int *) ;
 int sqlcipher_codec_ctx_init (int **,int*,int *,int ,int ) ;
 int sqlcipher_codec_ctx_set_kdf_iter (int *,int ) ;
 int sqlcipher_codec_ctx_set_kdf_salt (int *,unsigned char*,int) ;
 int sqlcipher_codec_ctx_set_pagesize (int *,int ) ;
 int sqlcipher_codec_ctx_set_use_hmac (int *,int ) ;
 int sqlcipher_deactivate () ;
 int sqlite3_errstr (int) ;
 int sqlite3_initialize () ;
 int sqliterkOSError (int,char*,...) ;
 int sqliterkOSRead (int *,int ,unsigned char*,size_t*) ;

int sqliterkCryptoSetCipher(sqliterk_pager *pager,
                            sqliterk_file *fd,
                            const sqliterk_cipher_conf *conf)
{
    codec_ctx *codec = ((void*)0);
    int rc;

    if (conf) {

        if (!conf->key || conf->key_len <= 0)
            return SQLITERK_MISUSE;



        sqlite3_initialize();
        sqlcipher_activate();



        int fake_db[8];


        rc = sqlcipher_codec_ctx_init(&codec, fake_db, ((void*)0), conf->key, conf->key_len);
        if (rc != SQLITE_OK)
            goto bail_sqlite_errstr;


        unsigned char *salt;
        unsigned char salt_buf[16];
        if (conf->kdf_salt) {
            salt = (unsigned char *) conf->kdf_salt;
        } else {
            size_t salt_size = 16;
            rc = sqliterkOSRead(fd, 0, salt_buf, &salt_size);
            if (rc != SQLITERK_OK) {
                sqliterkOSError(rc, "Failed to load KDF salt from file.");
                goto bail;
            }
            salt = salt_buf;
        }
        sqlcipher_codec_ctx_set_kdf_salt(codec, salt, 16);


        if (conf->page_size > 0) {
            rc = sqlcipher_codec_ctx_set_pagesize(codec, conf->page_size);
            if (rc != SQLITE_OK)
                goto bail_sqlite_errstr;
        }


        if (conf->use_hmac >= 0) {
            rc = sqlcipher_codec_ctx_set_use_hmac(codec, conf->use_hmac);
            if (rc != SQLITE_OK)
                goto bail_sqlite_errstr;
        }


        if (conf->kdf_iter > 0) {
            rc = sqlcipher_codec_ctx_set_kdf_iter(codec, conf->kdf_iter);
            if (rc != SQLITE_OK)
                goto bail;
        }


        int page_sz = sqlcipher_codec_ctx_get_pagesize(codec);
        int reserve_sz = sqlcipher_codec_ctx_get_reservesize(codec);

        pager->pagesize = page_sz;
        pager->reservedBytes = reserve_sz;
    }

    if (pager->codec) {
        sqlcipher_codec_ctx_free(&pager->codec);
        sqlcipher_deactivate();
    }

    pager->codec = codec;
    return SQLITERK_OK;

bail_sqlite_errstr:
    sqliterkOSError(SQLITERK_CANTOPEN,
                    "Failed to initialize cipher context: %s",
                    sqlite3_errstr(rc));
    rc = SQLITERK_CANTOPEN;
bail:
    if (codec)
        sqlcipher_codec_ctx_free(&codec);
    sqlcipher_deactivate();
    return rc;
}
