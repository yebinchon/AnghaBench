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
typedef  char gchar ;
typedef  int /*<<< orphan*/  GKeyFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 

gchar* 
FUNC3 (GKeyFile *keyf,
                           const char *category,
                           const char *key)
{
    gchar *v;

    if (!FUNC2 (keyf, category, key, NULL))
        return NULL;

    v = FUNC1 (keyf, category, key, NULL);
    if (v != NULL && v[0] == '\0') {
        FUNC0(v);
        return NULL;
    }

    return v;
}