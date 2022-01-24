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
struct TYPE_3__ {void* ptr; void* buffer_end; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ rc_t ;

/* Variables and functions */
 void* RC_BUFFER ; 
 int /*<<< orphan*/  RC_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(rc_t *rc)
{
	int buffer_size = FUNC1(rc->fd, RC_BUFFER, RC_BUFFER_SIZE);
//TODO: return -1 instead
//This will make unlzma delete broken unpacked file on unpack errors
	if (buffer_size <= 0)
		FUNC0("unexpected EOF");
	rc->buffer_end = RC_BUFFER + buffer_size;
	rc->ptr = RC_BUFFER;
}