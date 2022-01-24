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
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  g_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GHashTable *
FUNC9 (json_t *array)
{
    GHashTable *ret = NULL;
    size_t n, i;
    json_t *obj, *string, *integer;

    ret = FUNC2 (g_str_hash, g_str_equal, g_free, NULL);
    if (!ret) {
        return NULL;
    }

    n = FUNC5 (array);
    for (i = 0; i < n; ++i) {
        obj = FUNC4 (array, i);
        string = FUNC7 (obj, "path");
        if (!string) {
            FUNC0 (ret);
            return NULL;
        }
        integer = FUNC7 (obj, "by_me");
        if (!integer) {
            FUNC0 (ret);
            return NULL;
        }
        FUNC1 (ret,
                             FUNC3(FUNC8(string)),
                             (void*)(long)FUNC6(integer));
    }

    return ret;
}