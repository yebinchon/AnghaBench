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
struct pool_buffer {int /*<<< orphan*/  size; scalar_t__ data; scalar_t__ pango; scalar_t__ surface; scalar_t__ cairo; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pool_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct pool_buffer *buffer) {
	if (buffer->buffer) {
		FUNC5(buffer->buffer);
	}
	if (buffer->cairo) {
		FUNC0(buffer->cairo);
	}
	if (buffer->surface) {
		FUNC1(buffer->surface);
	}
	if (buffer->pango) {
		FUNC2(buffer->pango);
	}
	if (buffer->data) {
		FUNC4(buffer->data, buffer->size);
	}
	FUNC3(buffer, 0, sizeof(struct pool_buffer));
}