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
struct control_msg {unsigned char const type; } ;
typedef  int /*<<< orphan*/  expected ;

/* Variables and functions */
 int CONTROL_MSG_SERIALIZED_MAX_SIZE ; 
 unsigned char const CONTROL_MSG_TYPE_EXPAND_NOTIFICATION_PANEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct control_msg*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC3(void) {
    struct control_msg msg = {
        .type = CONTROL_MSG_TYPE_EXPAND_NOTIFICATION_PANEL,
    };

    unsigned char buf[CONTROL_MSG_SERIALIZED_MAX_SIZE];
    int size = FUNC1(&msg, buf);
    FUNC0(size == 1);

    const unsigned char expected[] = {
        CONTROL_MSG_TYPE_EXPAND_NOTIFICATION_PANEL,
    };
    FUNC0(!FUNC2(buf, expected, sizeof(expected)));
}