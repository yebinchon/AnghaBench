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
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC4(char *argv0)
{
	char buf[512];
	HKEY software, classes, mupdf, dotpdf, dotxps, dotepub, dotfb2;
	HKEY shell, open, command, supported_types;
	HKEY pdf_progids, xps_progids, epub_progids, fb2_progids;

	FUNC0(HKEY_CURRENT_USER, "Software", software);
	FUNC0(software, "Classes", classes);
	FUNC0(classes, ".pdf", dotpdf);
	FUNC0(dotpdf, "OpenWithProgids", pdf_progids);
	FUNC0(classes, ".xps", dotxps);
	FUNC0(dotxps, "OpenWithProgids", xps_progids);
	FUNC0(classes, ".epub", dotepub);
	FUNC0(dotepub, "OpenWithProgids", epub_progids);
	FUNC0(classes, ".fb2", dotfb2);
	FUNC0(dotfb2, "OpenWithProgids", fb2_progids);
	FUNC0(classes, "MuPDF", mupdf);
	FUNC0(mupdf, "SupportedTypes", supported_types);
	FUNC0(mupdf, "shell", shell);
	FUNC0(shell, "open", open);
	FUNC0(open, "command", command);

	FUNC3(buf, "\"%s\" \"%%1\"", argv0);

	FUNC2(open, "FriendlyAppName", "MuPDF");
	FUNC2(command, "", buf);
	FUNC2(supported_types, ".pdf", "");
	FUNC2(supported_types, ".xps", "");
	FUNC2(supported_types, ".epub", "");
	FUNC2(pdf_progids, "MuPDF", "");
	FUNC2(xps_progids, "MuPDF", "");
	FUNC2(epub_progids, "MuPDF", "");
	FUNC2(fb2_progids, "MuPDF", "");

	FUNC1(dotfb2);
	FUNC1(dotepub);
	FUNC1(dotxps);
	FUNC1(dotpdf);
	FUNC1(mupdf);
	FUNC1(classes);
	FUNC1(software);
}