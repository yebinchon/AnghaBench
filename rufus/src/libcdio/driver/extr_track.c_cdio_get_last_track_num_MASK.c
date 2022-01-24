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
typedef  scalar_t__ const track_t ;
typedef  int /*<<< orphan*/  CdIo_t ;

/* Variables and functions */
 scalar_t__ const CDIO_INVALID_TRACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

track_t
FUNC3 (const CdIo_t *p_cdio)
{
  if (NULL == p_cdio) {
    FUNC2("Null CdIo object passed\n");
    return CDIO_INVALID_TRACK;
  }

  {
    const track_t i_first_track = FUNC0(p_cdio);
    if ( CDIO_INVALID_TRACK != i_first_track ) {
      const track_t u_tracks = FUNC1(p_cdio);
      if ( CDIO_INVALID_TRACK != u_tracks )
	return i_first_track + u_tracks - 1;
    }
    return CDIO_INVALID_TRACK;
  }
}