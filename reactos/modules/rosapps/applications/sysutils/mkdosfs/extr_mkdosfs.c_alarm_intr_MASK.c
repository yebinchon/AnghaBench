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
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ blocks ; 
 scalar_t__ currently_testing ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void (*) (int)) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4 (int alnum)
{
  if (currently_testing >= blocks)
    return;

  FUNC3 (SIGALRM, alarm_intr);
  FUNC0 (5);
  if (!currently_testing)
    return;

  FUNC2 ("%d... ", currently_testing);
  FUNC1 (stdout);
}