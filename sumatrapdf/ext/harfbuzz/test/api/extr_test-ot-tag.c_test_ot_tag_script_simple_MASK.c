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
 int /*<<< orphan*/  HB_SCRIPT_ARABIC ; 
 int /*<<< orphan*/  HB_SCRIPT_COMMON ; 
 int /*<<< orphan*/  HB_SCRIPT_COPTIC ; 
 int /*<<< orphan*/  HB_SCRIPT_INHERITED ; 
 int /*<<< orphan*/  HB_SCRIPT_KATAKANA ; 
 int /*<<< orphan*/  HB_SCRIPT_LAO ; 
 int /*<<< orphan*/  HB_SCRIPT_LATIN ; 
 int /*<<< orphan*/  HB_SCRIPT_MANDAIC ; 
 int /*<<< orphan*/  HB_SCRIPT_MEETEI_MAYEK ; 
 int /*<<< orphan*/  HB_SCRIPT_NKO ; 
 int /*<<< orphan*/  HB_SCRIPT_UNKNOWN ; 
 int /*<<< orphan*/  HB_SCRIPT_VAI ; 
 int /*<<< orphan*/  HB_SCRIPT_YI ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* Arbitrary non-existent script */
  FUNC1 ("wwyz", FUNC0 ("wWyZ", -1));

  /* These we don't really care about */
  FUNC1 ("zyyy", HB_SCRIPT_COMMON);
  FUNC1 ("zinh", HB_SCRIPT_INHERITED);
  FUNC1 ("zzzz", HB_SCRIPT_UNKNOWN);

  FUNC1 ("arab", HB_SCRIPT_ARABIC);
  FUNC1 ("copt", HB_SCRIPT_COPTIC);
  FUNC1 ("kana", HB_SCRIPT_KATAKANA);
  FUNC1 ("latn", HB_SCRIPT_LATIN);

  /* These are trickier since their OT script tags have space. */
  FUNC1 ("lao ", HB_SCRIPT_LAO);
  FUNC1 ("yi  ", HB_SCRIPT_YI);
  /* Unicode-5.0 additions */
  FUNC1 ("nko ", HB_SCRIPT_NKO);
  /* Unicode-5.1 additions */
  FUNC1 ("vai ", HB_SCRIPT_VAI);

  /* https://docs.microsoft.com/en-us/typography/opentype/spec/scripttags */

  /* Unicode-5.2 additions */
  FUNC1 ("mtei", HB_SCRIPT_MEETEI_MAYEK);
  /* Unicode-6.0 additions */
  FUNC1 ("mand", HB_SCRIPT_MANDAIC);
}