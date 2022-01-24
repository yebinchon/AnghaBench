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
struct TYPE_5__ {int /*<<< orphan*/  extent; } ;
struct TYPE_4__ {TYPE_2__ root_directory_record; } ;
typedef  TYPE_1__ iso9660_pvd_t ;
typedef  TYPE_2__ iso9660_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDIO_INVALID_LSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

lsn_t
FUNC1(const iso9660_pvd_t *pvd)
{
  if (NULL == pvd)
    return CDIO_INVALID_LSN;
  else {
    const iso9660_dir_t *idr = &(pvd->root_directory_record);
    if (NULL == idr) return CDIO_INVALID_LSN;
    return(FUNC0 (idr->extent));
  }
}