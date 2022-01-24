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
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  guint8 ;
struct TYPE_3__ {int n_blocks; int /*<<< orphan*/  file_id; int /*<<< orphan*/ * blk_sha1s; int /*<<< orphan*/  file_size; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ Seafile ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SORT_KEYS ; 
 int /*<<< orphan*/  SEAF_METADATA_TYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static guint8 *
FUNC11 (Seafile *file, int *len)
{
    json_t *object, *block_id_array;

    object = FUNC5 ();

    FUNC6 (object, "type", SEAF_METADATA_TYPE_FILE);
    FUNC6 (object, "version", file->version);

    FUNC6 (object, "size", file->file_size);

    block_id_array = FUNC1 ();
    int i;
    for (i = 0; i < file->n_blocks; ++i) {
        FUNC2 (block_id_array, FUNC8(file->blk_sha1s[i]));
    }
    FUNC7 (object, "block_ids", block_id_array);

    char *data = FUNC4 (object, JSON_SORT_KEYS);
    *len = FUNC10(data);

    unsigned char sha1[20];
    FUNC0 (sha1, data, *len);
    FUNC9 (sha1, file->file_id, 20);

    FUNC3 (object);
    return (guint8 *)data;
}