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
struct TYPE_3__ {int /*<<< orphan*/  ap_q_lock; int /*<<< orphan*/  active_paths; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  event_q; } ;
typedef  TYPE_1__ WTStatus ;
typedef  int /*<<< orphan*/  WTEvent ;

/* Variables and functions */
#define  WT_EVENT_ATTRIB 133 
#define  WT_EVENT_CREATE_OR_UPDATE 132 
#define  WT_EVENT_DELETE 131 
#define  WT_EVENT_OVERFLOW 130 
#define  WT_EVENT_RENAME 129 
#define  WT_EVENT_SCAN_DIR 128 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int,char const*,char const*) ; 

__attribute__((used)) static void
FUNC8 (WTStatus *status,
                    int type, const char *path, const char *new_path)
{
    WTEvent *event = FUNC7 (type, path, new_path);

    char *name;
    switch (type) {
    case WT_EVENT_CREATE_OR_UPDATE:
        name = "create/update";
        break;
    case WT_EVENT_SCAN_DIR:
        name = "scan dir";
        break;
    case WT_EVENT_DELETE:
        name = "delete";
        break;
    case WT_EVENT_RENAME:
        name = "rename";
        break;
    case WT_EVENT_OVERFLOW:
        name = "overflow";
        break;
    case WT_EVENT_ATTRIB:
        name = "attribute change";
        break;
    default:
        name = "unknown";
    }

    FUNC5 ("Adding event: %s, %s %s\n", name, path, new_path?new_path:"");

    FUNC3 (&status->q_lock);
    FUNC1 (status->event_q, event);
    FUNC4 (&status->q_lock);

    if (type == WT_EVENT_CREATE_OR_UPDATE) {
        FUNC3 (&status->ap_q_lock);

        char *last = FUNC0 (status->active_paths);
        if (!last || FUNC6(last, path) != 0)
            FUNC1 (status->active_paths, FUNC2(path));

        FUNC4 (&status->ap_q_lock);
    }
}