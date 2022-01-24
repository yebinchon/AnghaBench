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
typedef  scalar_t__ track_t ;
struct TYPE_5__ {char* (* get_track_isrc ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  env; TYPE_1__ op; } ;
typedef  TYPE_2__ CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDIO_LOG_WARN ; 
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

char *
FUNC4 (const CdIo_t *p_cdio, track_t u_track)
{
  track_t u_last_track;
  if (NULL == p_cdio) {
    FUNC1("Null CdIo object passed\n");
    return NULL;
  }

  u_last_track = FUNC0(p_cdio);
  if (u_track > u_last_track) {
     FUNC2(CDIO_LOG_WARN, "Number of tracks exceeds maximum (%d vs. %d)\n",
              u_track, u_last_track);
     return NULL;
  }

  if (p_cdio->op.get_track_isrc) {
    return p_cdio->op.get_track_isrc (p_cdio->env, u_track);
  } else {
    return NULL;
  }
}