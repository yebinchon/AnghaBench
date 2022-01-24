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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lsn_t ;
typedef  int /*<<< orphan*/  driver_return_code_t ;
typedef  int cdio_read_mode_t ;
typedef  int /*<<< orphan*/  CdIo_t ;

/* Variables and functions */
#define  CDIO_READ_MODE_AUDIO 132 
#define  CDIO_READ_MODE_M1F1 131 
#define  CDIO_READ_MODE_M1F2 130 
#define  CDIO_READ_MODE_M2F1 129 
#define  CDIO_READ_MODE_M2F2 128 
 int /*<<< orphan*/  DRIVER_OP_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

driver_return_code_t
FUNC3(const CdIo_t *p_cdio, void *p_buf, lsn_t i_lsn,
                  cdio_read_mode_t read_mode, uint32_t i_blocks)
{
  switch(read_mode) {
  case CDIO_READ_MODE_AUDIO:
    return FUNC0 (p_cdio, p_buf, i_lsn, i_blocks);
  case CDIO_READ_MODE_M1F1:
    return FUNC1 (p_cdio, p_buf, i_lsn, false, i_blocks);
  case CDIO_READ_MODE_M1F2:
    return FUNC1 (p_cdio, p_buf, i_lsn, true,  i_blocks);
  case CDIO_READ_MODE_M2F1:
    return FUNC2 (p_cdio, p_buf, i_lsn, false, i_blocks);
  case CDIO_READ_MODE_M2F2:
    return FUNC2 (p_cdio, p_buf, i_lsn, true,  i_blocks);
  }
  /* Can't happen. Just to shut up gcc. */
  return DRIVER_OP_ERROR;
}