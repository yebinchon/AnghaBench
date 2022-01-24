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
struct TYPE_3__ {int text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  guint8 ;
typedef  int /*<<< orphan*/  SeafFSObject ;

/* Variables and functions */
 int SEAF_METADATA_TYPE_DIR ; 
 int SEAF_METADATA_TYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ *) ; 

SeafFSObject *
FUNC8 (const char *obj_id, uint8_t *data, int len)
{
    guint8 *decompressed;
    int outlen;
    json_t *object;
    json_error_t error;
    int type;
    SeafFSObject *fs_obj;

    if (FUNC4 (data, len, &decompressed, &outlen) < 0) {
        FUNC6 ("Failed to decompress fs object %s.\n", obj_id);
        return NULL;
    }

    object = FUNC2 ((const char *)decompressed, outlen, 0, &error);
    FUNC0 (decompressed);
    if (!object) {
        FUNC6 ("Failed to load fs json object: %s.\n", error.text);
        return NULL;
    }

    type = FUNC3 (object, "type");

    if (type == SEAF_METADATA_TYPE_FILE)
        fs_obj = (SeafFSObject *)FUNC7 (obj_id, object);
    else if (type == SEAF_METADATA_TYPE_DIR)
        fs_obj = (SeafFSObject *)FUNC5 (obj_id, object);
    else {
        FUNC6 ("Invalid fs type %d.\n", type);
        FUNC1 (object);
        return NULL;
    }

    FUNC1 (object);

    return fs_obj;
}