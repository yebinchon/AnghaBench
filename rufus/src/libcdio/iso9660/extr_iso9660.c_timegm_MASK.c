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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static time_t
FUNC5(struct tm *tm)
{
  time_t ret;
  char *tz;

  tz = FUNC0("TZ");
  FUNC2("TZ", "UTC", 1);
  FUNC3();
  ret = FUNC1(tm);
  if (tz)
    FUNC2("TZ", tz, 1);
  else
    FUNC4("TZ");
  FUNC3();
  return ret;
}