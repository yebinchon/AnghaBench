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
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZRES ; 
 int /*<<< orphan*/  PLANES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VERTRES ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
  HDC Dc;

  Dc = FUNC0(NULL);
  if (NULL == Dc)
    {
      return;
    }

  FUNC3(L"Display settings %d * %d * %d\n", FUNC1(Dc, HORZRES),
          FUNC1(Dc, VERTRES), FUNC1(Dc, BITSPIXEL) * FUNC1(Dc, PLANES));

  FUNC2(NULL, Dc);
}