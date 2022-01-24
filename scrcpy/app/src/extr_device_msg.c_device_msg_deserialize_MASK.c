#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_2__ {char* text; } ;
struct device_msg {unsigned char type; TYPE_1__ clipboard; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  DEVICE_MSG_TYPE_CLIPBOARD 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*,size_t) ; 

ssize_t
FUNC4(const unsigned char *buf, size_t len,
                       struct device_msg *msg) {
    if (len < 3) {
        // at least type + empty string length
        return 0; // not available
    }

    msg->type = buf[0];
    switch (msg->type) {
        case DEVICE_MSG_TYPE_CLIPBOARD: {
            uint16_t clipboard_len = FUNC2(&buf[1]);
            if (clipboard_len > len - 3) {
                return 0; // not available
            }
            char *text = FUNC1(clipboard_len + 1);
            if (!text) {
                FUNC0("Could not allocate text for clipboard");
                return -1;
            }
            if (clipboard_len) {
                FUNC3(text, &buf[3], clipboard_len);
            }
            text[clipboard_len] = '\0';

            msg->clipboard.text = text;
            return 3 + clipboard_len;
        }
        default:
            FUNC0("Unknown device message type: %d", (int) msg->type);
            return -1; // error, we cannot recover
    }
}