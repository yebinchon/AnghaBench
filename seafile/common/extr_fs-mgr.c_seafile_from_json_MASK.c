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
struct TYPE_3__ {char const* text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  guint8 ;
typedef  int /*<<< orphan*/  Seafile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (void*,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Seafile *
FUNC6 (const char *id, void *data, int len)
{
    guint8 *decompressed;
    int outlen;
    json_t *object = NULL;
    json_error_t error;
    Seafile *seafile;

    if (FUNC3 (data, len, &decompressed, &outlen) < 0) {
        FUNC4 ("Failed to decompress seafile object %s.\n", id);
        return NULL;
    }

    object = FUNC2 ((const char *)decompressed, outlen, 0, &error);
    FUNC0 (decompressed);
    if (!object) {
        FUNC4 ("Failed to load seafile json object: %s.\n", error.text);
        return NULL;
    }

    seafile = FUNC5 (id, object);

    FUNC1 (object);
    return seafile;
}