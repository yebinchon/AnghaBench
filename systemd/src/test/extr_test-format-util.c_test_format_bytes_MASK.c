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
 int FUNC0 (int) ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC1(900, true, "900B", "900B", "900B", "900B");
        FUNC1(900, false, "900", "900", "900", "900");
        FUNC1(1023, true, "1023B", "1023B", "1.0K", "1K");
        FUNC1(1023, false, "1023", "1023", "1.0K", "1K");
        FUNC1(1024, true, "1.0K", "1K", "1.0K", "1K");
        FUNC1(1024, false, "1.0K", "1K", "1.0K", "1K");
        FUNC1(1100, true, "1.0K", "1K", "1.1K", "1K");
        FUNC1(1500, true, "1.4K", "1K", "1.5K", "1K");
        FUNC1(FUNC0(3)*1024*1024, true, "3.0M", "3M", "3.1M", "3M");
        FUNC1(FUNC0(3)*1024*1024*1024, true, "3.0G", "3G", "3.2G", "3G");
        FUNC1(FUNC0(3)*1024*1024*1024*1024, true, "3.0T", "3T", "3.2T", "3T");
        FUNC1(FUNC0(3)*1024*1024*1024*1024*1024, true, "3.0P", "3P", "3.3P", "3P");
        FUNC1(FUNC0(3)*1024*1024*1024*1024*1024*1024, true, "3.0E", "3E", "3.4E", "3E");
        FUNC1(UINT64_MAX, true, NULL, NULL, NULL, NULL);
        FUNC1(UINT64_MAX, false, NULL, NULL, NULL, NULL);
}