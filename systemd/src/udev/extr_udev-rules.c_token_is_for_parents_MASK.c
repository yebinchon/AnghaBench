#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; } ;
typedef  TYPE_1__ UdevRuleToken ;

/* Variables and functions */
 scalar_t__ TK_M_PARENTS_KERNEL ; 
 scalar_t__ TK_M_PARENTS_TAG ; 

__attribute__((used)) static bool FUNC0(UdevRuleToken *token) {
        return token->type >= TK_M_PARENTS_KERNEL && token->type <= TK_M_PARENTS_TAG;
}