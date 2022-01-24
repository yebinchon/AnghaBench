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
struct TYPE_3__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int gsize ;
typedef  int /*<<< orphan*/  SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

SeafCommit *
FUNC5 (const char *id, char *data, gsize len)
{
    json_t *object;
    SeafCommit *commit;
    json_error_t jerror;

    object = FUNC3 (data, len, 0, &jerror);
    if (!object) {
        /* Perhaps the commit object contains invalid UTF-8 character. */
        if (data[len-1] == 0)
            FUNC0 (data, len - 1);
        else
            FUNC0 (data, len);

        object = FUNC3 (data, len, 0, &jerror);
        if (!object) {
            FUNC4 ("Failed to load commit json: %s.\n", jerror.text);
            return NULL;
        }
    }

    commit = FUNC1 (id, object);

    FUNC2 (object);

    return commit;
}