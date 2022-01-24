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
typedef  int /*<<< orphan*/  track_t ;
typedef  int /*<<< orphan*/  msf_t ;
typedef  int /*<<< orphan*/  lba_t ;
struct TYPE_5__ {scalar_t__ get_track_msf; int /*<<< orphan*/  (* get_track_lba ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ op; int /*<<< orphan*/  env; } ;
typedef  TYPE_2__ CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDIO_INVALID_LBA ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

lba_t
FUNC4(const CdIo_t *p_cdio, track_t u_track)
{
  if (NULL == p_cdio) {
    FUNC1("Null CdIo object passed\n");
    return CDIO_INVALID_LBA;
  }

  if (p_cdio->op.get_track_lba) {
    return p_cdio->op.get_track_lba (p_cdio->env, u_track);
  } else {
    msf_t msf;
    if (p_cdio->op.get_track_msf)
      if (FUNC0(p_cdio, u_track, &msf))
        return FUNC2(&msf);
    return CDIO_INVALID_LBA;
  }
}