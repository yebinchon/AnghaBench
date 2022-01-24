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
typedef  int /*<<< orphan*/  fz_xml ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC4(fz_xml *manifest, const char *idref)
{
	fz_xml *item;
	if (!idref)
		return NULL;
	item = FUNC1(manifest, "item");
	while (item)
	{
		const char *id = FUNC0(item, "id");
		if (id && !FUNC3(id, idref))
			return FUNC0(item, "href");
		item = FUNC2(item, "item");
	}
	return NULL;
}