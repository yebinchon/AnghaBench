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
typedef  int /*<<< orphan*/  hb_unicode_funcs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  hb_unicode_funcs_t *uf, *uf2;

  /* Chain-up to nil */

  uf = FUNC2 (NULL);
  FUNC1 (!FUNC5 (uf));

  uf2 = FUNC2 (uf);
  FUNC1 (FUNC5 (uf));
  FUNC3 (uf);

  FUNC1 (!FUNC5 (uf2));
  FUNC0 (uf2);

  FUNC3 (uf2);

  /* Chain-up to default */

  uf = FUNC2 (FUNC4 ());
  FUNC1 (!FUNC5 (uf));

  uf2 = FUNC2 (uf);
  FUNC1 (FUNC5 (uf));
  FUNC3 (uf);

  FUNC1 (!FUNC5 (uf2));
  FUNC6 (uf2);
  FUNC7 (uf2);

  FUNC3 (uf2);

}