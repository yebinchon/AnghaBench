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
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int MKDEXT_AUTOLINK ; 
 unsigned int MKDEXT_DISABLE_INDENTED_CODE ; 
 unsigned int MKDEXT_FENCED_CODE ; 
 unsigned int MKDEXT_FOOTNOTES ; 
 unsigned int MKDEXT_HIGHLIGHT ; 
 unsigned int MKDEXT_LAX_SPACING ; 
 unsigned int MKDEXT_NO_INTRA_EMPHASIS ; 
 unsigned int MKDEXT_QUOTE ; 
 unsigned int MKDEXT_SPACE_HEADERS ; 
 unsigned int MKDEXT_STRIKETHROUGH ; 
 unsigned int MKDEXT_SUPERSCRIPT ; 
 unsigned int MKDEXT_TABLES ; 
 unsigned int MKDEXT_UNDERLINE ; 
 scalar_t__ Qtrue ; 
 int /*<<< orphan*/  T_HASH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(VALUE hash, unsigned int *enabled_extensions_p)
{
	unsigned int extensions = 0;

	FUNC1(hash, T_HASH);

	/**
	 * Markdown extensions -- all disabled by default
	 */
	if (FUNC2(hash, FUNC0("no_intra_emphasis")) == Qtrue)
		extensions |= MKDEXT_NO_INTRA_EMPHASIS;

	if (FUNC2(hash, FUNC0("tables")) == Qtrue)
		extensions |= MKDEXT_TABLES;

	if (FUNC2(hash, FUNC0("fenced_code_blocks")) == Qtrue)
		extensions |= MKDEXT_FENCED_CODE;

	if (FUNC2(hash, FUNC0("disable_indented_code_blocks")) == Qtrue)
		extensions |= MKDEXT_DISABLE_INDENTED_CODE;

	if (FUNC2(hash, FUNC0("autolink")) == Qtrue)
		extensions |= MKDEXT_AUTOLINK;

	if (FUNC2(hash, FUNC0("strikethrough")) == Qtrue)
		extensions |= MKDEXT_STRIKETHROUGH;

	if (FUNC2(hash, FUNC0("underline")) == Qtrue)
		extensions |= MKDEXT_UNDERLINE;

	if (FUNC2(hash, FUNC0("highlight")) == Qtrue)
		extensions |= MKDEXT_HIGHLIGHT;

	if (FUNC2(hash, FUNC0("quote")) == Qtrue)
		extensions |= MKDEXT_QUOTE;

	if (FUNC2(hash, FUNC0("lax_spacing")) == Qtrue)
		extensions |= MKDEXT_LAX_SPACING;

	if (FUNC2(hash, FUNC0("space_after_headers")) == Qtrue)
		extensions |= MKDEXT_SPACE_HEADERS;

	if (FUNC2(hash, FUNC0("superscript")) == Qtrue)
		extensions |= MKDEXT_SUPERSCRIPT;

	if (FUNC2(hash, FUNC0("footnotes")) == Qtrue)
		extensions |= MKDEXT_FOOTNOTES;

	*enabled_extensions_p = extensions;
}