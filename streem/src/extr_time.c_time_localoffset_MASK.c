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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(int force)
{
  static int localoffset = 1;

  if (force || localoffset == 1) {
    time_t now;
    struct tm gm;

    now = FUNC3(NULL);
    FUNC1(&now, &gm);
    localoffset = FUNC0(now, FUNC2(&gm));
  }
  return localoffset;
}