#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct stat {int /*<<< orphan*/  st_mtim; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_4__ {scalar_t__ vc_mtime; int /*<<< orphan*/  vc_keymap_toggle; int /*<<< orphan*/  vc_keymap; int /*<<< orphan*/ * vc_cache; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(Context *c, sd_bus_message *m) {
        struct stat st;
        usec_t t;
        int r;

        /* Do not try to re-read the file within single bus operation. */
        if (m) {
                if (m == c->vc_cache)
                        return 0;

                FUNC3(c->vc_cache);
                c->vc_cache = FUNC2(m);
        }

        if (FUNC4("/etc/vconsole.conf", &st) < 0) {
                if (errno != ENOENT)
                        return -errno;

                c->vc_mtime = USEC_INFINITY;
                FUNC0(c);
                return 0;
        }

        /* If mtime is not changed, then we do not need to re-read */
        t = FUNC5(&st.st_mtim);
        if (c->vc_mtime != USEC_INFINITY && t == c->vc_mtime)
                return 0;

        c->vc_mtime = t;
        FUNC0(c);

        r = FUNC1(NULL, "/etc/vconsole.conf",
                           "KEYMAP",        &c->vc_keymap,
                           "KEYMAP_TOGGLE", &c->vc_keymap_toggle);
        if (r < 0)
                return r;

        return 0;
}