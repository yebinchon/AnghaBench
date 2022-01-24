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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_BEFORE_FEATURES ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static uint64_t
FUNC3(uint64_t initial_version)
{
	uint64_t version = initial_version;

	if (version <= SPA_VERSION_BEFORE_FEATURES) {
		version = version +
		    FUNC2(SPA_VERSION_BEFORE_FEATURES - version + 1);
	}

	if (version > SPA_VERSION_BEFORE_FEATURES)
		version = SPA_VERSION_FEATURES;

	FUNC0(FUNC1(version));
	return (version);
}