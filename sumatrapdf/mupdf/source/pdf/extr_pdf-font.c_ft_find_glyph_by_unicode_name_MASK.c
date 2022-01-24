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
typedef  int /*<<< orphan*/  FT_Face ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(FT_Face face, const char *name)
{
	int unicode, glyph;

	/* Prefer exact unicode match if available. */
	unicode = FUNC3(name);
	if (unicode > 0)
	{
		glyph = FUNC0(face, unicode);
		if (glyph > 0)
			return glyph;
	}

	/* Fall back to font glyph name if we can. */
	glyph = FUNC1(face, name);
	if (glyph > 0)
		return glyph;

	/* Fuzzy unicode match as last attempt. */
	unicode = FUNC2(name);
	if (unicode > 0)
		return FUNC0(face, unicode);

	/* Failed. */
	return 0;
}