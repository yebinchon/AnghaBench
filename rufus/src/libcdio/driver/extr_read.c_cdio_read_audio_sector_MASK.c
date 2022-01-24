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
typedef  int /*<<< orphan*/  lsn_t ;
typedef  int /*<<< orphan*/  driver_return_code_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_audio_sectors ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  env; TYPE_1__ op; } ;
typedef  TYPE_2__ CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_OP_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 

driver_return_code_t
FUNC2 (const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn)
{
  FUNC0(i_lsn);
  if  (p_cdio->op.read_audio_sectors)
    return p_cdio->op.read_audio_sectors (p_cdio->env, p_buf, i_lsn, 1);
  return DRIVER_OP_UNSUPPORTED;
}