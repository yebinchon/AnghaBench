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
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,int,int) ; 

char *FUNC2 (time_t *t)
{
  struct tm   *local;
  static char result[32];

  local = FUNC0(t);
  FUNC1(result,"%4d/%02d/%02d %02d:%02d:%02d",
          local->tm_year+1900, local->tm_mon+1, local->tm_mday,
          local->tm_hour, local->tm_min, local->tm_sec);
  return result;
}