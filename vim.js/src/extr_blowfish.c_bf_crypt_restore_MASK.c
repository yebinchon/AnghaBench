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
 int BF_OFB_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ofb_buffer ; 
 int /*<<< orphan*/  pax ; 
 int /*<<< orphan*/  randbyte_offset ; 
 int /*<<< orphan*/  save_ofb_buffer ; 
 int /*<<< orphan*/  save_pax ; 
 int /*<<< orphan*/  save_randbyte_offset ; 
 int /*<<< orphan*/  save_sbx ; 
 int /*<<< orphan*/  save_update_offset ; 
 int /*<<< orphan*/  sbx ; 
 int /*<<< orphan*/  update_offset ; 

void
FUNC1()
{
    randbyte_offset = save_randbyte_offset;
    update_offset = save_update_offset;
    FUNC0(ofb_buffer, save_ofb_buffer, BF_OFB_LEN);
    FUNC0(pax, save_pax, 4 * 18);
    FUNC0(sbx, save_sbx, 4 * 4 * 256);
}