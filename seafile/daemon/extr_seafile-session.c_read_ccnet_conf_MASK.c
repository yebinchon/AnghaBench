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
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GKeyFile ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 char* FUNC0 (char*,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (const char *ccnet_dir, char **client_id, char **client_name)
{
    char *ccnet_conf_path = FUNC0 ("/", ccnet_dir, "ccnet.conf", NULL);
    GKeyFile *key_file = FUNC7 ();
    GError *error = NULL;

    if (!FUNC2 (ccnet_conf_path, G_FILE_TEST_IS_REGULAR))
        goto out;

    if (!FUNC6 (key_file, ccnet_conf_path, 0, &error)) {
        FUNC8 ("Failed to read ccnet.conf: %s.\n", error->message);
        FUNC1 (&error);
        goto out;
    }

    *client_id = FUNC5 (key_file, "General", "ID", &error);
    if (error) {
        FUNC8 ("Failed to read client id from ccnet.conf: %s.\n", error->message);
        FUNC1 (&error);
        goto out;
    }

    *client_name = FUNC5 (key_file, "General", "NAME", &error);
    if (error) {
        FUNC8 ("Failed to read client name from ccnet.conf: %s.\n", error->message);
        FUNC1 (&error);
        goto out;
    }

out:
    FUNC3 (ccnet_conf_path);
    FUNC4 (key_file);
}