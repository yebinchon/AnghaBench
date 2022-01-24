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

/* Variables and functions */
 int /*<<< orphan*/  RENDEZVOUS_BGW_LOADER_API_VERSION ; 
 void** FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_bgw_loader_api_version ; 

void
FUNC1()
{
	void **versionptr = FUNC0(RENDEZVOUS_BGW_LOADER_API_VERSION);

	/* Cast away the const to store in the rendezvous variable */
	*versionptr = (void *) &ts_bgw_loader_api_version;
}