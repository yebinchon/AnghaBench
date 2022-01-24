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
typedef  int /*<<< orphan*/  LWLock ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  RENDEZVOUS_CHUNK_APPEND_LWLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LWLock *
FUNC2()
{
	LWLock **lock = (LWLock **) FUNC1(RENDEZVOUS_CHUNK_APPEND_LWLOCK);

	if (*lock == NULL)
		FUNC0(ERROR, "LWLock for coordinating parallel workers not initialized");

	return *lock;
}