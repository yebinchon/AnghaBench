#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  lvd_lba; } ;
typedef  TYPE_1__ udf_t ;
struct TYPE_7__ {int /*<<< orphan*/ * logvol_id; } ;
typedef  TYPE_2__ logical_vol_desc_t ;

/* Variables and functions */
 scalar_t__ DRIVER_OP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int UDF_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(udf_t *p_udf, /*out*/ char *psz_logvolid, unsigned int i_logvolid)
{
  uint8_t data[UDF_BLOCKSIZE];
  logical_vol_desc_t *p_logvol = (logical_vol_desc_t *) &data;
  char* r;
  int logvolid_len;

  /* clear the output to empty string */
  if (psz_logvolid != NULL)
    psz_logvolid[0] = 0;

  if (DRIVER_OP_SUCCESS != FUNC4 (p_udf, p_logvol, p_udf->lvd_lba, 1) )
    return 0;

  r = FUNC5((uint8_t *) p_logvol->logvol_id, p_logvol->logvol_id[127]);
  if (r == NULL)
    return 0;

  logvolid_len = FUNC2(r)+1;  /* +1 for NUL terminator */
  if (psz_logvolid != NULL) {
    FUNC3(psz_logvolid, r, FUNC0(logvolid_len, i_logvolid));
    psz_logvolid[i_logvolid-1] = 0;    /* strncpy does not always terminate the dest */
  }
  FUNC1(r);

  return logvolid_len;
}