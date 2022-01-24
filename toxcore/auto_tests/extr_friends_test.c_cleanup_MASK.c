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
 int /*<<< orphan*/  child_id ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_id ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
    FUNC0(parent_id, crypto_box_PUBLICKEYBYTES);
    FUNC0(child_id, crypto_box_PUBLICKEYBYTES);
    FUNC1("============= END TEST =============");
}