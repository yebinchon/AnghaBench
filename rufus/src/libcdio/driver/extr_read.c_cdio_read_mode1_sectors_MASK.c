#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lsn_t ;
typedef  int /*<<< orphan*/  driver_return_code_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_mode1_sectors ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,scalar_t__) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  env; TYPE_1__ op; } ;
typedef  TYPE_2__ CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_OP_SUCCESS ; 
 int /*<<< orphan*/  DRIVER_OP_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,scalar_t__) ; 

driver_return_code_t
FUNC2 (const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                         bool b_form2,  uint32_t i_blocks)
{
  FUNC0(i_lsn, i_blocks);

  if (0 == i_blocks) return DRIVER_OP_SUCCESS;

  if (p_cdio->op.read_mode1_sectors)
    return (p_cdio->op.read_mode1_sectors) (p_cdio->env, p_buf, i_lsn, b_form2,
                                            i_blocks);
  return DRIVER_OP_UNSUPPORTED;
}