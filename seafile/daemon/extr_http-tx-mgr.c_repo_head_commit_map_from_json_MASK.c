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
typedef  scalar_t__ gint64 ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  g_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC9 (void*) ; 
 char const* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static GHashTable *
FUNC13 (const char *json_str, gint64 len)
{
    json_t *object;
    json_error_t jerror;
    GHashTable *ret;

    object = FUNC5 (json_str, (size_t)len, 0, &jerror);
    if (!object) {
        FUNC12 ("Failed to load json: %s\n", jerror.text);
        return NULL;
    }

    ret = FUNC1 (g_str_hash, g_str_equal, g_free, g_free);

    void *iter = FUNC6 (object);
    const char *key;
    json_t *value;
    while (iter) {
        key = FUNC7 (iter);
        value = FUNC9 (iter);
        if (FUNC11(value) != JSON_STRING) {
            FUNC12 ("Bad json object format when parsing head commit id map.\n");
            FUNC0 (ret);
            goto out;
        }
        FUNC2 (ret, FUNC3 (key), FUNC3(FUNC10(value)));
        iter = FUNC8 (object, iter);
    }

out:
    FUNC4 (object);
    return ret;
}