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
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AKEYCODE_MENU ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static inline void
FUNC1(struct controller *controller, int actions) {
    FUNC0(controller, AKEYCODE_MENU, actions, "MENU");
}