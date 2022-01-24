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
typedef  int /*<<< orphan*/  options_t ;
typedef  int /*<<< orphan*/  location_provider_t ;
typedef  int /*<<< orphan*/  gamma_method_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC2 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

void
FUNC3(
	options_t *options, int argc, char *argv[],
	const gamma_method_t *gamma_methods,
	const location_provider_t *location_providers)
{
	const char* program_name = argv[0];
	int opt;
	while ((opt = FUNC1(argc, argv, "b:c:g:hl:m:oO:pPrt:vVx")) != -1) {
		char option = opt;
		int r = FUNC2(
			option, optarg, options, program_name, gamma_methods,
			location_providers);
		if (r < 0) FUNC0(EXIT_FAILURE);
	}
}