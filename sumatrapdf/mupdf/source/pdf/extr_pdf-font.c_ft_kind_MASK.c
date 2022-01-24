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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int TRUETYPE ; 
 int TYPE1 ; 
 int UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(FT_Face face)
{
#ifdef FT_FONT_FORMATS_H
	const char *kind = FT_Get_Font_Format(face);
#else
	const char *kind = FUNC1(face);
#endif
	if (!FUNC2(kind, "TrueType")) return TRUETYPE;
	if (!FUNC2(kind, "Type 1")) return TYPE1;
	if (!FUNC2(kind, "CFF")) return TYPE1;
	if (!FUNC2(kind, "CID Type 1")) return TYPE1;
	return UNKNOWN;
}