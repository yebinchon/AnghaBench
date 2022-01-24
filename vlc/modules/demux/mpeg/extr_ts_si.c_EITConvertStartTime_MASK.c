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
typedef  int uint64_t ;
struct tm {int tm_year; scalar_t__ tm_isdst; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_mday; void* tm_sec; void* tm_min; void* tm_hour; } ;
typedef  int int64_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int const,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct tm*) ; 

__attribute__((used)) static int64_t FUNC4( uint64_t i_date )
{
    const int i_mjd = i_date >> 24;
    struct tm tm;

    tm.tm_hour = FUNC0(i_date >> 16);
    tm.tm_min  = FUNC0(i_date >>  8);
    tm.tm_sec  = FUNC0(i_date      );

    /* if all 40 bits are 1, the start is unknown */
    if( i_date == FUNC2(0xffffffffff) )
        return -1;

    FUNC1( i_mjd, &tm.tm_year, &tm.tm_mon, &tm.tm_mday );
    tm.tm_year -= 1900;
    tm.tm_mon--;
    tm.tm_isdst = 0;

    return FUNC3( &tm );
}