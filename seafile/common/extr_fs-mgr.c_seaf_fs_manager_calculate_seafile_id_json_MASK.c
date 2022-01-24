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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  guint8 ;
struct TYPE_3__ {int block_nr; int /*<<< orphan*/ * blk_sha1s; int /*<<< orphan*/  file_size; } ;
typedef  TYPE_1__ CDCFileDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SORT_KEYS ; 
 int /*<<< orphan*/  SEAF_METADATA_TYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char*) ; 

void
FUNC13 (int repo_version,
                                           CDCFileDescriptor *cdc,
                                           guint8 *file_id_sha1)
{
    json_t *object, *block_id_array;

    object = FUNC6 ();

    FUNC7 (object, "type", SEAF_METADATA_TYPE_FILE);
    FUNC7 (object, "version",
                                FUNC11(repo_version));

    FUNC7 (object, "size", cdc->file_size);

    block_id_array = FUNC2 ();
    int i;
    uint8_t *ptr = cdc->blk_sha1s;
    char block_id[41];
    for (i = 0; i < cdc->block_nr; ++i) {
        FUNC10 (ptr, block_id, 20);
        FUNC3 (block_id_array, FUNC9(block_id));
        ptr += 20;
    }
    FUNC8 (object, "block_ids", block_id_array);

    char *data = FUNC5 (object, JSON_SORT_KEYS);
    int ondisk_size = FUNC12(data);

    /* The seafile object id is sha1 hash of the json object. */
    FUNC0 (file_id_sha1, data, ondisk_size);

    FUNC4 (object);
    FUNC1 (data);
}