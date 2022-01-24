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
struct file_handler_request {scalar_t__ action; int /*<<< orphan*/  file; } ;
struct file_handler {int /*<<< orphan*/  push_target; int /*<<< orphan*/  mutex; int /*<<< orphan*/  current_process; int /*<<< orphan*/  serial; int /*<<< orphan*/  queue; scalar_t__ stopped; int /*<<< orphan*/  event_cond; } ;
typedef  int /*<<< orphan*/  process_t ;

/* Variables and functions */
 scalar_t__ ACTION_INSTALL_APK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  PROCESS_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct file_handler_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct file_handler_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(void *data) {
    struct file_handler *file_handler = data;

    for (;;) {
        FUNC8(file_handler->mutex);
        file_handler->current_process = PROCESS_NONE;
        while (!file_handler->stopped && FUNC3(&file_handler->queue)) {
            FUNC5(file_handler->event_cond, file_handler->mutex);
        }
        if (file_handler->stopped) {
            // stop immediately, do not process further events
            FUNC9(file_handler->mutex);
            break;
        }
        struct file_handler_request req;
        bool non_empty = FUNC4(&file_handler->queue, &req);
        FUNC2(non_empty);

        process_t process;
        if (req.action == ACTION_INSTALL_APK) {
            FUNC1("Installing %s...", req.file);
            process = FUNC7(file_handler->serial, req.file);
        } else {
            FUNC1("Pushing %s...", req.file);
            process = FUNC11(file_handler->serial, req.file,
                                file_handler->push_target);
        }
        file_handler->current_process = process;
        FUNC9(file_handler->mutex);

        if (req.action == ACTION_INSTALL_APK) {
            if (FUNC10(process, "adb install")) {
                FUNC1("%s successfully installed", req.file);
            } else {
                FUNC0("Failed to install %s", req.file);
            }
        } else {
            if (FUNC10(process, "adb push")) {
                FUNC1("%s successfully pushed to %s", req.file,
                                                     file_handler->push_target);
            } else {
                FUNC0("Failed to push %s to %s", req.file,
                                                file_handler->push_target);
            }
        }

        FUNC6(&req);
    }
    return 0;
}