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
struct info {int dummy; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 unsigned char const* FUNC2 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char const* FUNC3 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char const*,int) ; 
 scalar_t__ FUNC6 (char**) ; 

__attribute__((used)) static const unsigned char *
FUNC7(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	static char *ignorable[] = {
		"NETSACPE2.0", "ANIMEXTS1.0", "XMP DataXMP",
		"ZGATEXTI5\0\0", "ZGATILEI5\0\0", "ZGANPIMGI5\0", "ZGACTRLI5\0\0",
		"ZGAVECTI5\0\0", "ZGAALPHAI5\0", "ZGATITLE4.0", "ZGATEXTI4.0",
	};
	int i, ignored;

	if (end - p < 14)
		FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in application extension in gif image");
	if (p[2] != 0x0b)
		FUNC0(ctx, FZ_ERROR_GENERIC, "out of range application extension block size in gif image");

	ignored = 0;
	for (i = 0; i < (int)FUNC6(ignorable); i++)
		ignored |= FUNC4(&p[3], ignorable[i], 8 + 3);
	if (!ignored)
	{
		char extension[9];
		FUNC5(extension, &p[3], 8);
		extension[8] = '\0';
		FUNC1(ctx, "ignoring unsupported application extension '%s' in gif image", extension);
	}

	if (!FUNC4(&p[3], "ICCRGBG1012", 11))
		return FUNC2(ctx, info, p + 14, end);

	return FUNC3(ctx, info, p + 14, end, NULL);
}