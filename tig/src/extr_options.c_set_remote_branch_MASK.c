#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 TYPE_1__ repo ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,size_t*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const*,size_t) ; 
 size_t FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC6(const char *name, const char *value, size_t valuelen)
{
	if (!FUNC2(name, ".remote")) {
		FUNC4(repo.remote, value, valuelen);

	} else if (*repo.remote && !FUNC2(name, ".merge")) {
		size_t from = FUNC5(repo.remote);

		if (!FUNC1(value, "refs/heads/"))
			value += FUNC0("refs/heads/");

		if (!FUNC3(repo.remote, &from, "/%s", value))
			repo.remote[0] = 0;
	}
}