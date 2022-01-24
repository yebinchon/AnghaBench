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
typedef  int /*<<< orphan*/ * hb_language_t ;

/* Variables and functions */
 int /*<<< orphan*/ * HB_LANGUAGE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  hb_language_t fa = FUNC1 ("fa", -1);
  hb_language_t fa_IR = FUNC1 ("fa_IR", -1);
  hb_language_t fa_ir = FUNC1 ("fa-ir", -1);
  hb_language_t en = FUNC1 ("en", -1);

  FUNC0 (HB_LANGUAGE_INVALID == NULL);

  FUNC0 (fa != NULL);
  FUNC0 (fa_IR != NULL);
  FUNC0 (fa_IR == fa_ir);

  FUNC0 (en != NULL);
  FUNC0 (en != fa);

  /* Test recall */
  FUNC0 (en == FUNC1 ("en", -1));
  FUNC0 (en == FUNC1 ("eN", -1));
  FUNC0 (en == FUNC1 ("Enx", 2));

  FUNC0 (HB_LANGUAGE_INVALID == FUNC1 (NULL, -1));
  FUNC0 (HB_LANGUAGE_INVALID == FUNC1 ("", -1));
  FUNC0 (HB_LANGUAGE_INVALID == FUNC1 ("en", 0));
  FUNC0 (HB_LANGUAGE_INVALID != FUNC1 ("en", 1));
  FUNC0 (NULL == FUNC3 (HB_LANGUAGE_INVALID));

  /* Not sure how to test this better.  Setting env vars
   * here doesn't sound like the right approach, and I'm
   * not sure that it even works. */
  FUNC0 (HB_LANGUAGE_INVALID != FUNC2 ());
}