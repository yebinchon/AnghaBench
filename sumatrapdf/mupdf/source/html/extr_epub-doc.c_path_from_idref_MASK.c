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
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const char *
FUNC5(char *path, fz_xml *manifest, const char *base_uri, const char *idref, int n)
{
	const char *rel_path = FUNC4(manifest, idref);
	if (!rel_path)
	{
		path[0] = 0;
		return NULL;
	}
	FUNC2(path, base_uri, n);
	FUNC1(path, "/", n);
	FUNC1(path, rel_path, n);
	return FUNC0(FUNC3(path));
}