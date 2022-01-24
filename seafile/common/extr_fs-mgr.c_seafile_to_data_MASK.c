#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guint8 ;
struct TYPE_5__ {scalar_t__ version; int /*<<< orphan*/  file_id; } ;
typedef  TYPE_1__ Seafile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int*) ; 

__attribute__((used)) static guint8 *
FUNC5 (Seafile *file, int *len)
{
    if (file->version > 0) {
        guint8 *data;
        int orig_len;
        guint8 *compressed;

        data = FUNC3 (file, &orig_len);
        if (!data)
            return NULL;

        if (FUNC1 (data, orig_len, &compressed, len) < 0) {
            FUNC2 ("Failed to compress file object %s.\n", file->file_id);
            FUNC0 (data);
            return NULL;
        }
        FUNC0 (data);
        return compressed;
    } else
        return FUNC4 (file, len);
}