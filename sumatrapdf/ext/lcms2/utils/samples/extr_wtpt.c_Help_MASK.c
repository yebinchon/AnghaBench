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
 double LCMS_VERSION ; 
 int SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void FUNC2(void)
{
       FUNC1(stderr, "little CMS ICC white point utility - v3 [LittleCMS %2.2f]\n", LCMS_VERSION / 1000.0);

       FUNC1(stderr, "usage: wtpt [flags] [<ICC profile>]\n\n");

       FUNC1(stderr, "flags:\n\n");
       
       FUNC1(stderr, "%cl - CIE Lab\n", SW);
       FUNC1(stderr, "%cc - CIE LCh\n", SW);
       FUNC1(stderr, "%cx - Don't show XYZ\n", SW);

       FUNC1(stderr, "\nIf no parameters are given, then this program will\n");
       FUNC1(stderr, "ask for XYZ value of media white. If parameter given, it must be\n");
       FUNC1(stderr, "the profile to inspect.\n\n");

       FUNC1(stderr, "This program is intended to be a demo of the little cms\n"
              "engine. Both lcms and this program are freeware. You can\n"
              "obtain both in source code at http://www.littlecms.com\n"
              "For suggestions, comments, bug reports etc. send mail to\n"
              "info@littlecms.com\n\n");
       FUNC0(0);
}