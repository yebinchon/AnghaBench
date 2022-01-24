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
struct tm {int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 

__attribute__((used)) static char * FUNC2(time_t t)
{
    char *psz;
    struct tm tms;
    FUNC1(&t, &tms);
    if(FUNC0(&psz, "%2.2d:%2.2d", tms.tm_hour, tms.tm_min) < 0)
       psz = NULL;
    return psz;
}