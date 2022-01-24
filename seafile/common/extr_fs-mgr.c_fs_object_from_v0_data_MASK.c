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
typedef  int /*<<< orphan*/  SeafFSObject ;

/* Variables and functions */
 int SEAF_METADATA_TYPE_DIR ; 
 int SEAF_METADATA_TYPE_FILE ; 
 int FUNC0 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/  const*,int) ; 

SeafFSObject *
FUNC4 (const char *obj_id, const uint8_t *data, int len)
{
    int type = FUNC0 (data, len);

    if (type == SEAF_METADATA_TYPE_FILE)
        return (SeafFSObject *)FUNC3 (obj_id, data, len);
    else if (type == SEAF_METADATA_TYPE_DIR)
        return (SeafFSObject *)FUNC1 (obj_id, data, len);
    else {
        FUNC2 ("Invalid object type %d.\n", type);
        return NULL;
    }
}