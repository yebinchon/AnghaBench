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
struct find_s {int dummy; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,struct find_s*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,struct find_s*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(HWND hwnd, const char *name, struct find_s *find,
    int num_tests, BOOL unicode)
{
  int i;

  for (i = 0; i < num_tests; i++) {
      FUNC0(hwnd, name, &find[i], i, unicode);
      FUNC1(hwnd, name, &find[i], i, unicode);
  }
}