#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pagesize; int reservedBytes; int /*<<< orphan*/ * codec; } ;
typedef  TYPE_1__ sqliterk_pager ;
typedef  int /*<<< orphan*/  sqliterk_file ;
struct TYPE_6__ {int /*<<< orphan*/  kdf_iter; int /*<<< orphan*/  use_hmac; int /*<<< orphan*/  page_size; scalar_t__ kdf_salt; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ sqliterk_cipher_conf ;
typedef  int /*<<< orphan*/  codec_ctx ;

/* Variables and functions */
 int SQLITERK_CANTOPEN ; 
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t*) ; 

int FUNC14(sqliterk_pager *pager,
                            sqliterk_file *fd,
                            const sqliterk_cipher_conf *conf)
{
    codec_ctx *codec = NULL;
    int rc;

    if (conf) {
        // Check arguments.
        if (!conf->key || conf->key_len <= 0)
            return SQLITERK_MISUSE;

        // SQLite library must be initialized before calling sqlcipher_activate(),
        // or it will cause a deadlock.
        FUNC11();
        FUNC0();

        // XXX: fake BTree structure passed to sqlcipher_codec_ctx_init.
        // Member of such structure is assigned but never used by repair kit.
        int fake_db[8];

        // Initialize codec context.
        rc = FUNC4(&codec, fake_db, NULL, conf->key, conf->key_len);
        if (rc != SQLITE_OK)
            goto bail_sqlite_errstr;

        // Read and set KDF salt.
        unsigned char *salt;
        unsigned char salt_buf[16];
        if (conf->kdf_salt) {
            salt = (unsigned char *) conf->kdf_salt;
        } else {
            size_t salt_size = 16;
            rc = FUNC13(fd, 0, salt_buf, &salt_size);
            if (rc != SQLITERK_OK) {
                FUNC12(rc, "Failed to load KDF salt from file.");
                goto bail;
            }
            salt = salt_buf;
        }
        FUNC6(codec, salt, 16);

        // Set page size.
        if (conf->page_size > 0) {
            rc = FUNC7(codec, conf->page_size);
            if (rc != SQLITE_OK)
                goto bail_sqlite_errstr;
        }

        // Set HMAC usage.
        if (conf->use_hmac >= 0) {
            rc = FUNC8(codec, conf->use_hmac);
            if (rc != SQLITE_OK)
                goto bail_sqlite_errstr;
        }

        // Set KDF Iteration.
        if (conf->kdf_iter > 0) {
            rc = FUNC5(codec, conf->kdf_iter);
            if (rc != SQLITE_OK)
                goto bail;
        }

        // Update pager page size.
        int page_sz = FUNC2(codec);
        int reserve_sz = FUNC3(codec);

        pager->pagesize = page_sz;
        pager->reservedBytes = reserve_sz;
    }

    if (pager->codec) {
        FUNC1(&pager->codec);
        FUNC9();
    }

    pager->codec = codec;
    return SQLITERK_OK;

bail_sqlite_errstr:
    FUNC12(SQLITERK_CANTOPEN,
                    "Failed to initialize cipher context: %s",
                    FUNC10(rc));
    rc = SQLITERK_CANTOPEN;
bail:
    if (codec)
        FUNC1(&codec);
    FUNC9();
    return rc;
}