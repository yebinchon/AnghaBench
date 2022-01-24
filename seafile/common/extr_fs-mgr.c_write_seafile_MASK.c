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
typedef  void guint8 ;
struct TYPE_3__ {int /*<<< orphan*/  obj_store; } ;
typedef  TYPE_1__ SeafFSManager ;
typedef  int /*<<< orphan*/  CDCFileDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int,int /*<<< orphan*/ *,int*,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,int) ; 
 scalar_t__ FUNC5 (void*,int,void**,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int,char*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*) ; 

__attribute__((used)) static int
FUNC8 (SeafFSManager *fs_mgr,
               const char *repo_id,
               int version,
               CDCFileDescriptor *cdc,
               unsigned char *obj_sha1)
{
    int ret = 0;
    char seafile_id[41];
    void *ondisk;
    int ondisk_size;

    if (version > 0) {
        ondisk = FUNC0 (version, cdc, &ondisk_size, seafile_id);

        guint8 *compressed;
        int outlen;

        if (FUNC5 (ondisk, ondisk_size, &compressed, &outlen) < 0) {
            FUNC7 ("Failed to compress seafile obj %s:%s.\n",
                          repo_id, seafile_id);
            ret = -1;
            FUNC2 (ondisk);
            goto out;
        }

        if (FUNC6 (fs_mgr->obj_store, repo_id, version, seafile_id,
                                      compressed, outlen, FALSE) < 0)
            ret = -1;
        FUNC3 (compressed);
        FUNC2 (ondisk);
    } else {
        ondisk = FUNC1 (cdc, &ondisk_size, seafile_id);

        if (FUNC6 (fs_mgr->obj_store, repo_id, version, seafile_id,
                                      ondisk, ondisk_size, FALSE) < 0)
            ret = -1;
        FUNC3 (ondisk);
    }

out:
    if (ret == 0)
        FUNC4 (seafile_id, obj_sha1, 20);

    return ret;
}