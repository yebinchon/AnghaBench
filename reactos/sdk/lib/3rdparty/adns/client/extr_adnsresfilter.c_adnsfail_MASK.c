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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const char *what, int e) {
  FUNC0(stderr,"adnsresfilter: adns call failed: %s: %s\n",what,FUNC2(e));
  FUNC1(2);
}