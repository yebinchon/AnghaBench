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
typedef  int track_t ;
typedef  int /*<<< orphan*/  CdIo_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const*,int) ; 

unsigned int
FUNC2(const CdIo_t *p_cdio, track_t u_track)
{
  const track_t u_tracks = FUNC0(p_cdio);

  if (u_track >=1 && u_track <= u_tracks)
    return ( FUNC1(p_cdio, u_track+1)
             - FUNC1(p_cdio, u_track) );
  return 0;
}