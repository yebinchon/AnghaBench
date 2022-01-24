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
struct TYPE_4__ {int /*<<< orphan*/  (* get_first_track_num ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  env; TYPE_1__ op; } ;
typedef  TYPE_2__ CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDIO_INVALID_TRACK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

track_t
FUNC2(const CdIo_t *p_cdio)
{
  if (NULL == p_cdio) {
    FUNC0("Null CdIo object passed\n");
    return CDIO_INVALID_TRACK;
  }


  if (p_cdio->op.get_first_track_num) {
    return p_cdio->op.get_first_track_num (p_cdio->env);
  } else {
    return CDIO_INVALID_TRACK;
  }
}