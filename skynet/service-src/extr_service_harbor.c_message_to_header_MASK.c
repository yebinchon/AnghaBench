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
struct remote_message_header {void* session; void* destination; void* source; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline void
FUNC1(const uint32_t *message, struct remote_message_header *header) {
	header->source = FUNC0(message[0]);
	header->destination = FUNC0(message[1]);
	header->session = FUNC0(message[2]);
}