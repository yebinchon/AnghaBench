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
struct TYPE_3__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  Seafile ;
typedef  TYPE_1__ SeafFSObject ;
typedef  int /*<<< orphan*/  SeafDir ;

/* Variables and functions */
 scalar_t__ SEAF_METADATA_TYPE_DIR ; 
 scalar_t__ SEAF_METADATA_TYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2 (SeafFSObject *obj)
{
    if (!obj)
        return;

    if (obj->type == SEAF_METADATA_TYPE_FILE)
        FUNC1 ((Seafile *)obj);
    else if (obj->type == SEAF_METADATA_TYPE_DIR)
        FUNC0 ((SeafDir *)obj);
}