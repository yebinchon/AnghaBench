#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  pvd_lba; } ;
typedef  TYPE_1__ udf_t ;
struct TYPE_6__ {unsigned int* vol_ident; } ;
typedef  TYPE_2__ udf_pvd_t ;

/* Variables and functions */
 scalar_t__ DRIVER_OP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int UDF_BLOCKSIZE ; 
 int UDF_VOLID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

int
FUNC6(udf_t *p_udf, /*out*/ char *psz_volid, unsigned int i_volid)
{
  uint8_t data[UDF_BLOCKSIZE];
  const udf_pvd_t *p_pvd = (udf_pvd_t *) &data;
  char* r;
  unsigned int volid_len;

  /* clear the output to empty string */
  if (psz_volid != NULL)
    psz_volid[0] = 0;

  /* get primary volume descriptor */
  if ( DRIVER_OP_SUCCESS != FUNC4(p_udf, &data, p_udf->pvd_lba, 1) )
    return 0;

  volid_len = p_pvd->vol_ident[UDF_VOLID_SIZE-1];
  if(volid_len > UDF_VOLID_SIZE-1) {
    /* this field is only UDF_VOLID_SIZE bytes something is wrong */
    volid_len = UDF_VOLID_SIZE-1;
  }

  r = FUNC5((uint8_t *) p_pvd->vol_ident, volid_len);
  if (r == NULL)
    return 0;

  volid_len = FUNC2(r)+1;     /* +1 for NUL terminator */
  if (psz_volid != NULL) {
    FUNC3(psz_volid, r, FUNC0(volid_len, i_volid));
    psz_volid[i_volid-1] = 0;  /* strncpy does not always terminate the dest */
  }
  FUNC1(r);

  return volid_len;
}