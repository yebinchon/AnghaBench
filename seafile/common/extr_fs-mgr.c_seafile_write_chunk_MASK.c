#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int gsize ;
typedef  scalar_t__ gboolean ;
struct TYPE_5__ {scalar_t__ disable_block_hash; } ;
struct TYPE_4__ {int len; char* block_buf; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  int /*<<< orphan*/  GChecksum ;
typedef  TYPE_1__ CDCDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int FUNC0 (char const*,int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 () ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char**,int*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 

int
FUNC10 (const char *repo_id,
                     int version,
                     CDCDescriptor *chunk,
                     SeafileCrypt *crypt,
                     uint8_t *checksum,
                     gboolean write_data)
{
    GChecksum *ctx = FUNC3 (G_CHECKSUM_SHA1);
    gsize len = 20;
    int ret = 0;

    /* Encrypt before write to disk if needed, and we don't encrypt
     * empty files. */
    if (crypt != NULL && chunk->len) {
        char *encrypted_buf = NULL;         /* encrypted output */
        int enc_len = -1;                /* encrypted length */

        ret = FUNC8 (&encrypted_buf, /* output */
                               &enc_len,      /* output len */
                               chunk->block_buf, /* input */
                               chunk->len,       /* input len */
                               crypt);
        if (ret != 0) {
            FUNC7 ("Error: failed to encrypt block\n");
            FUNC1 (ctx);
            return -1;
        }

        if (seaf->disable_block_hash) {
            char *uuid = FUNC6();
            FUNC4 (ctx, (unsigned char *)uuid, FUNC9(uuid));
            FUNC5(uuid);
        } else {
            FUNC4 (ctx, (unsigned char *)encrypted_buf, enc_len);
        }
        FUNC2 (ctx, checksum, &len);

        if (write_data)
            ret = FUNC0 (repo_id, version, checksum, encrypted_buf, enc_len);
        FUNC5 (encrypted_buf);
    } else {
        /* not a encrypted repo, go ahead */
        if (seaf->disable_block_hash) {
            char *uuid = FUNC6();
            FUNC4 (ctx, (unsigned char *)uuid, FUNC9(uuid));
            FUNC5(uuid);
        }
        else {
            FUNC4 (ctx, (unsigned char *)chunk->block_buf, chunk->len);
        }
        FUNC2 (ctx, checksum, &len);

        if (write_data)
            ret = FUNC0 (repo_id, version, checksum, chunk->block_buf, chunk->len);
    }

    FUNC1 (ctx);

    return ret;
}