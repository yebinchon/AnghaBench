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
struct TYPE_5__ {int /*<<< orphan*/  current_cursor; int /*<<< orphan*/  last_cursor; int /*<<< orphan*/  answer; int /*<<< orphan*/  url; int /*<<< orphan*/  easy; scalar_t__* error; int /*<<< orphan*/  watchdog_timestamp; } ;
typedef  TYPE_1__ Uploader ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int EIO ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(Uploader *u) {
        CURLcode code;
        long status;

        FUNC1(u);

        u->watchdog_timestamp = FUNC9(CLOCK_MONOTONIC);
        code = FUNC3(u->easy);
        if (code) {
                if (u->error[0])
                        FUNC7("Upload to %s failed: %.*s",
                                  u->url, (int) sizeof(u->error), u->error);
                else
                        FUNC7("Upload to %s failed: %s",
                                  u->url, FUNC4(code));
                return -EIO;
        }

        code = FUNC2(u->easy, CURLINFO_RESPONSE_CODE, &status);
        if (code)
                return FUNC8(FUNC0(EUCLEAN),
                                       "Failed to retrieve response code: %s",
                                       FUNC4(code));

        if (status >= 300)
                return FUNC8(FUNC0(EIO),
                                       "Upload to %s failed with code %ld: %s",
                                       u->url, status, FUNC10(u->answer));
        else if (status < 200)
                return FUNC8(FUNC0(EIO),
                                       "Upload to %s finished with unexpected code %ld: %s",
                                       u->url, status, FUNC10(u->answer));
        else
                FUNC6("Upload finished successfully with code %ld: %s",
                          status, FUNC10(u->answer));

        FUNC5(u->last_cursor, u->current_cursor);

        return FUNC11(u);
}