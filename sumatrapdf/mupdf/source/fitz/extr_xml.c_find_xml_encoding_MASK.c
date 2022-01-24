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
 unsigned short* fz_unicode_from_iso8859_1 ; 
 unsigned short* fz_unicode_from_iso8859_7 ; 
 unsigned short* fz_unicode_from_koi8u ; 
 unsigned short* fz_unicode_from_windows_1250 ; 
 unsigned short* fz_unicode_from_windows_1251 ; 
 unsigned short* fz_unicode_from_windows_1252 ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static const unsigned short *FUNC3(char *s)
{
	const unsigned short *table = NULL;
	char *end, *xml, *enc;

	end = FUNC1(s, '>');
	if (end)
	{
		*end = 0;
		xml = FUNC2(s, "<?xml");
		if (xml)
		{
			enc = FUNC2(xml, "encoding=");
			if (enc)
			{
				enc += 10;
				if (FUNC0(enc, "iso-8859-1") || FUNC0(enc, "latin1"))
					table = fz_unicode_from_iso8859_1;
				else if (FUNC0(enc, "iso-8859-7") || FUNC0(enc, "greek"))
					table = fz_unicode_from_iso8859_7;
				else if (FUNC0(enc, "koi8"))
					table = fz_unicode_from_koi8u;
				else if (FUNC0(enc, "windows-1250"))
					table = fz_unicode_from_windows_1250;
				else if (FUNC0(enc, "windows-1251"))
					table = fz_unicode_from_windows_1251;
				else if (FUNC0(enc, "windows-1252"))
					table = fz_unicode_from_windows_1252;
			}
		}
		*end = '>';
	}

	return table;
}