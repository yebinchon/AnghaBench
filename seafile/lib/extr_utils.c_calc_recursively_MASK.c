#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int gint64 ;
struct TYPE_8__ {int /*<<< orphan*/  message; } ;
struct TYPE_7__ {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ STAT_STRUCT ;
typedef  TYPE_2__ GError ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  CCNET_DOMAIN ; 
 scalar_t__ FUNC0 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gint64
FUNC10 (const char *path, GError **calc_error)
{
    gint64 sum = 0;

    GError *error = NULL;
    GDir *folder = FUNC5(path, 0, &error);
    if (!folder) {
        FUNC8 (calc_error, CCNET_DOMAIN, 0,
                     "g_open() dir %s failed:%s\n", path, error->message);
        return -1;
    }

    const char *name = NULL;
    while ((name = FUNC6(folder)) != NULL) {
        STAT_STRUCT sb;
        char *full_path= FUNC3 (path, name, NULL);
        if (FUNC0(full_path, &sb) < 0) {
            FUNC8 (calc_error, CCNET_DOMAIN, 0, "failed to stat on %s: %s\n",
                         full_path, FUNC9(errno));
            FUNC7(full_path);
            FUNC4(folder);
            return -1;
        }

        if (FUNC1(sb.st_mode)) {
            gint64 size = FUNC10(full_path, calc_error);
            if (size < 0) {
                FUNC7 (full_path);
                FUNC4 (folder);
                return -1;
            }
            sum += size;
            FUNC7(full_path);
        } else if (FUNC2(sb.st_mode)) {
            sum += sb.st_size;
            FUNC7(full_path);
        }
    }

    FUNC4 (folder);
    return sum;
}