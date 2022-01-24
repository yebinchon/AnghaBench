#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; TYPE_2__ patch_header; TYPE_1__ patch; } ;
typedef  TYPE_3__ patch_data ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(patch_data* current)
{
    UINT crc;

    crc = FUNC0(~0, current->patch.data, current->patch.len);
    FUNC1(crc == 0, "Invalid patch crc 0x%x for %s\n", crc, current->name);

    crc = FUNC0(~0, current->patch_header.data, current->patch_header.len);
    FUNC1(crc == 0, "Invalid patch_header crc 0x%x for %s\n", crc, current->name);
}