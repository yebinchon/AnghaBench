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
struct receiver {int /*<<< orphan*/  control_socket; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int DEVICE_MSG_SERIALIZED_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (struct receiver*,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC5(void *data) {
    struct receiver *receiver = data;

    unsigned char buf[DEVICE_MSG_SERIALIZED_MAX_SIZE];
    size_t head = 0;

    for (;;) {
        FUNC1(head < DEVICE_MSG_SERIALIZED_MAX_SIZE);
        ssize_t r = FUNC3(receiver->control_socket, buf,
                             DEVICE_MSG_SERIALIZED_MAX_SIZE - head);
        if (r <= 0) {
            FUNC0("Receiver stopped");
            break;
        }

        ssize_t consumed = FUNC4(receiver, buf, r);
        if (consumed == -1) {
            // an error occurred
            break;
        }

        if (consumed) {
            // shift the remaining data in the buffer
            FUNC2(buf, &buf[consumed], r - consumed);
            head = r - consumed;
        }
    }

    return 0;
}