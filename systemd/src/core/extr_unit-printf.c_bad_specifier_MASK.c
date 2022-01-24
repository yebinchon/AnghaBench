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
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*,char) ; 

__attribute__((used)) static void FUNC1(const Unit *u, char specifier) {
        FUNC0(u, "Specifier '%%%c' used in unit configuration, which is deprecated. Please update your unit file, as it does not work as intended.", specifier);
}