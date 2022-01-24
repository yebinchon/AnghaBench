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
typedef  void guint8 ;
struct TYPE_5__ {scalar_t__ version; int /*<<< orphan*/  dir_id; } ;
typedef  TYPE_1__ SeafDir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,int,void**,int*) ; 
 void* FUNC2 (TYPE_1__*,int*) ; 
 void* FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void *
FUNC5 (SeafDir *dir, int *len)
{
    if (dir->version > 0) {
        guint8 *data;
        int orig_len;
        guint8 *compressed;

        data = FUNC2 (dir, &orig_len);
        if (!data)
            return NULL;

        if (FUNC1 (data, orig_len, &compressed, len) < 0) {
            FUNC4 ("Failed to compress dir object %s.\n", dir->dir_id);
            FUNC0 (data);
            return NULL;
        }

        FUNC0 (data);
        return compressed;
    } else
        return FUNC3 (dir, len);
}