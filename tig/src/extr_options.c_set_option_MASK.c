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
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int FUNC0 (char*,char const*) ; 
 int FUNC1 (int,char const**) ; 
 int FUNC2 (int,char const**) ; 
 int FUNC3 (int,char const**) ; 
 int FUNC4 (int,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

enum status_code
FUNC6(const char *opt, int argc, const char *argv[])
{
	if (!FUNC5(opt, "color"))
		return FUNC2(argc, argv);

	if (!FUNC5(opt, "set"))
		return FUNC3(argc, argv);

	if (!FUNC5(opt, "bind"))
		return FUNC1(argc, argv);

	if (!FUNC5(opt, "source"))
		return FUNC4(argc, argv);

	return FUNC0("Unknown option command: %s", opt);
}