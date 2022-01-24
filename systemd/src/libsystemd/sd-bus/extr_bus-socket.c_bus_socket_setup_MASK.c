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
struct TYPE_4__ {int message_version; scalar_t__ message_endian; int /*<<< orphan*/  output_fd; int /*<<< orphan*/  input_fd; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  SNDBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(sd_bus *b) {
        FUNC0(b);

        /* Increase the buffers to 8 MB */
        (void) FUNC1(b->input_fd, SNDBUF_SIZE);
        (void) FUNC2(b->output_fd, SNDBUF_SIZE);

        b->message_version = 1;
        b->message_endian = 0;
}