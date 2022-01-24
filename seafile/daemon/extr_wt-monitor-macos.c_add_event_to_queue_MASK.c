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
 int /*<<< orphan*/  G_NORMALIZE_NFC ; 
#define  WT_EVENT_ATTRIB 133 
#define  WT_EVENT_CREATE_OR_UPDATE 132 
#define  WT_EVENT_DELETE 131 
#define  WT_EVENT_OVERFLOW 130 
#define  WT_EVENT_RENAME 129 
#define  WT_EVENT_SCAN_DIR 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int,char*,char*) ; 

__attribute__((used)) static void
FUNC10 (WTStatus *status,
                    int type, const char *path, const char *new_path)
{
    char *nfc_path = NULL, *nfc_new_path = NULL;

    if (path)
        nfc_path = FUNC4 (path, -1, G_NORMALIZE_NFC);
    if (new_path)
        nfc_new_path = FUNC4 (new_path, -1, G_NORMALIZE_NFC);

    WTEvent *event = FUNC9 (type, nfc_path, nfc_new_path);

    FUNC0 (nfc_path);
    FUNC0 (nfc_new_path);

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

    FUNC7 ("Adding event: %s, %s %s\n", name, path, new_path?new_path:"");

    FUNC5 (&status->q_lock);
    FUNC2 (status->event_q, event);
    FUNC6 (&status->q_lock);

    if (type == WT_EVENT_CREATE_OR_UPDATE) {
        FUNC5 (&status->ap_q_lock);

        char *last = FUNC1 (status->active_paths);
        if (!last || FUNC8(last, path) != 0)
            FUNC2 (status->active_paths, FUNC3(path));

        FUNC6 (&status->ap_q_lock);
    }
}