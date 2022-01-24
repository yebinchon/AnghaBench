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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("nofail,fail,nofail", "nofail\0fail\0") == true);
        FUNC0(FUNC1("nofail,nofail,fail", "nofail\0fail\0") == false);
        FUNC0(FUNC1("abc,cde,afail", "nofail\0fail\0") == false);
        FUNC0(FUNC1("nofail,fail=0,nofail=0", "nofail\0fail\0") == true);
        FUNC0(FUNC1("nofail,nofail=0,fail=0", "nofail\0fail\0") == false);
}