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
typedef  int /*<<< orphan*/  guchar ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SeafBlockManager ;
typedef  int /*<<< orphan*/  GChecksum ;
typedef  int /*<<< orphan*/  BlockHandle ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_READ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char const*) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 

gboolean
FUNC10 (SeafBlockManager *mgr,
                                 const char *store_id,
                                 int version,
                                 const char *block_id,
                                 gboolean *io_error)
{
    BlockHandle *h;
    char buf[10240];
    int n;
    GChecksum *cs;
    const char *check_id;
    gboolean ret;

    h = FUNC6 (mgr,
                                       store_id, version,
                                       block_id, BLOCK_READ);
    if (!h) {
        FUNC8 ("Failed to open block %s:%.8s.\n", store_id, block_id);
        *io_error = TRUE;
        return FALSE;
    }

    cs = FUNC2 (G_CHECKSUM_SHA1);
    while (1) {
        n = FUNC7 (mgr, h, buf, sizeof(buf));
        if (n < 0) {
            FUNC8 ("Failed to read block %s:%.8s.\n", store_id, block_id);
            *io_error = TRUE;
            FUNC0 (cs);
            return FALSE;
        }
        if (n == 0)
            break;

        FUNC3 (cs, (guchar *)buf, n);
    }

    FUNC5 (mgr, h);
    FUNC4 (mgr, h);

    check_id = FUNC1 (cs);

    if (FUNC9 (check_id, block_id) == 0)
        ret = TRUE;
    else
        ret = FALSE;

    FUNC0 (cs);
    return ret;
}