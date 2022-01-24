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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mode ;
typedef  scalar_t__ guint32 ;
typedef  int gsize ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  SeafdirOndisk ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ G_BIG_ENDIAN ; 
 scalar_t__ G_BYTE_ORDER ; 
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int SEAF_DIR_NAME_LEN ; 
 scalar_t__ SEAF_METADATA_TYPE_DIR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 

__attribute__((used)) static gboolean
FUNC11 (const char *dir_id, const uint8_t *data, int len,
                   gboolean verify_id)
{
    guint32 meta_type;
    guint32 mode;
    char id[41];
    guint32 name_len;
    char name[SEAF_DIR_NAME_LEN];
    const uint8_t *ptr;
    int remain;
    int dirent_base_size;
    GChecksum *ctx;
    uint8_t sha1[20];
    gsize cs_len = 20;
    char check_id[41];

    if (len < sizeof(SeafdirOndisk)) {
        FUNC9 ("[fs mgr] Corrupt seafdir object %s.\n", dir_id);
        return FALSE;
    }

    ptr = data;
    remain = len;

    meta_type = FUNC6 (&ptr);
    remain -= 4;
    if (meta_type != SEAF_METADATA_TYPE_DIR) {
        FUNC9 ("Data does not contain a directory.\n");
        return FALSE;
    }

    if (verify_id)
        ctx = FUNC4 (G_CHECKSUM_SHA1);

    dirent_base_size = 2 * sizeof(guint32) + 40;
    while (remain > dirent_base_size) {
        mode = FUNC6 (&ptr);
        FUNC7 (id, ptr, 40);
        id[40] = '\0';
        ptr += 40;
        name_len = FUNC6 (&ptr);
        remain -= dirent_base_size;
        if (remain >= name_len) {
            name_len = FUNC1 (name_len, SEAF_DIR_NAME_LEN - 1);
            FUNC7 (name, ptr, name_len);
            ptr += name_len;
            remain -= name_len;
        } else {
            FUNC9 ("Bad data format for dir objcet %s.\n", dir_id);
            return FALSE;
        }

        if (verify_id) {
            /* Convert mode to little endian before compute. */
            if (G_BYTE_ORDER == G_BIG_ENDIAN)
                mode = FUNC0 (mode);

            FUNC5 (ctx, (unsigned char *)id, 40);
            FUNC5 (ctx, (unsigned char *)name, name_len);
            FUNC5 (ctx, (unsigned char *)&mode, sizeof(mode));
        }
    }

    if (!verify_id)
        return TRUE;

    FUNC3 (ctx, sha1, &cs_len);
    FUNC8 (sha1, check_id, 20);
    FUNC2 (ctx);

    if (FUNC10 (check_id, dir_id) == 0)
        return TRUE;
    else
        return FALSE;
}