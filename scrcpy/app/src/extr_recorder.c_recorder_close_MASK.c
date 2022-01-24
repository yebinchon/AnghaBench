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
struct recorder {int failed; int /*<<< orphan*/  filename; int /*<<< orphan*/  format; TYPE_1__* ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  pb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct recorder *recorder) {
    int ret = FUNC2(recorder->ctx);
    if (ret < 0) {
        FUNC0("Failed to write trailer to %s", recorder->filename);
        recorder->failed = true;
    }
    FUNC4(recorder->ctx->pb);
    FUNC3(recorder->ctx);

    if (recorder->failed) {
        FUNC0("Recording failed to %s", recorder->filename);
    } else {
        const char *format_name = FUNC5(recorder->format);
        FUNC1("Recording complete to %s file: %s", format_name, recorder->filename);
    }
}