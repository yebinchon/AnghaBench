#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gsize ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {int /*<<< orphan*/  message; } ;
struct TYPE_6__ {int /*<<< orphan*/  priv; } ;
typedef  TYPE_1__ ObjBackend ;
typedef  TYPE_2__ GError ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ **,scalar_t__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (ObjBackend *bend,
                     const char *repo_id,
                     int version,
                     const char *obj_id,
                     void **data,
                     int *len)
{
    char path[SEAF_PATH_MAX];
    gsize tmp_len;
    GError *error = NULL;

    FUNC2 (bend->priv, obj_id, path, repo_id, version);

    /* seaf_debug ("object path: %s\n", path); */

    FUNC1 (path, (gchar**)data, &tmp_len, &error);
    if (error) {
#ifdef MIGRATION
        g_clear_error (&error);
        id_to_path (bend->priv, obj_id, path, repo_id, 1);
        g_file_get_contents (path, (gchar**)data, &tmp_len, &error);
        if (error) {
            seaf_debug ("[obj backend] Failed to read object %s: %s.\n",
                        obj_id, error->message);
            g_clear_error (&error);
            return -1;
        }
#else
        FUNC3 ("[obj backend] Failed to read object %s: %s.\n",
                    obj_id, error->message);
        FUNC0 (&error);
        return -1;
#endif
    }

    *len = (int)tmp_len;
    return 0;
}