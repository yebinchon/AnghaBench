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
typedef  int /*<<< orphan*/  uint32_t ;
struct skynet_message {int /*<<< orphan*/  source; int /*<<< orphan*/  data; } ;
struct drop_t {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct skynet_message *msg, void *ud) {
	struct drop_t *d = ud;
	FUNC1(msg->data);
	uint32_t source = d->handle;
	FUNC0(source);
	// report error to the message source
	FUNC2(NULL, source, msg->source, PTYPE_ERROR, 0, NULL, 0);
}