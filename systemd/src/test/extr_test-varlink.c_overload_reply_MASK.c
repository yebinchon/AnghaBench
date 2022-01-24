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
typedef  int /*<<< orphan*/  VarlinkReplyFlags ;
typedef  int /*<<< orphan*/  Varlink ;
typedef  int /*<<< orphan*/  JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  VARLINK_ERROR_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(Varlink *link, JsonVariant *parameters, const char *error_id, VarlinkReplyFlags flags, void *userdata) {

        /* This method call reply should always be called with a disconnection, since the method call should
         * be talking to an overloaded server */

        FUNC1("Over reply triggered with error: %s", FUNC4(error_id));
        FUNC0(FUNC3(error_id, VARLINK_ERROR_DISCONNECTED));
        FUNC2(FUNC5(link), 0);

        return 0;
}