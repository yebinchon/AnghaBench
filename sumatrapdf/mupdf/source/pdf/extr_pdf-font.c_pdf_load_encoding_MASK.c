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

/* Variables and functions */
 char** fz_glyph_name_from_adobe_standard ; 
 char** fz_glyph_name_from_mac_expert ; 
 char** fz_glyph_name_from_mac_roman ; 
 char** fz_glyph_name_from_win_ansi ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

void
FUNC1(const char **estrings, const char *encoding)
{
	const char * const *bstrings = NULL;
	int i;

	if (!FUNC0(encoding, "StandardEncoding"))
		bstrings = fz_glyph_name_from_adobe_standard;
	if (!FUNC0(encoding, "MacRomanEncoding"))
		bstrings = fz_glyph_name_from_mac_roman;
	if (!FUNC0(encoding, "MacExpertEncoding"))
		bstrings = fz_glyph_name_from_mac_expert;
	if (!FUNC0(encoding, "WinAnsiEncoding"))
		bstrings = fz_glyph_name_from_win_ansi;

	if (bstrings)
		for (i = 0; i < 256; i++)
			estrings[i] = bstrings[i];
}