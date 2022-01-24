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
typedef  int /*<<< orphan*/  hb_tag_t ;
typedef  scalar_t__ hb_language_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 

__attribute__((used)) static void
FUNC5 (const char *tag_s, const char *lang_s)
{
  hb_language_t lang = FUNC2 (lang_s, -1);
  hb_tag_t tag = FUNC4 (tag_s, -1);

  FUNC1 ("Testing tag %s -> language %s", tag_s, lang_s);

  FUNC0 (lang == FUNC3 (tag));
}