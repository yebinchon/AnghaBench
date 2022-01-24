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
typedef  int /*<<< orphan*/  track_t ;
typedef  int /*<<< orphan*/  lba_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_track_pregap_lba ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  env; TYPE_1__ op; } ;
typedef  TYPE_2__ CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDIO_INVALID_LBA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

lba_t
FUNC2(const CdIo_t *p_cdio, track_t u_track)
{
  if (NULL == p_cdio) {
    FUNC0("Null CdIo object passed\n");
    return CDIO_INVALID_LBA;
  }

  if (p_cdio->op.get_track_pregap_lba) {
    return p_cdio->op.get_track_pregap_lba (p_cdio->env, u_track);
  } else {
    return CDIO_INVALID_LBA;
  }
}