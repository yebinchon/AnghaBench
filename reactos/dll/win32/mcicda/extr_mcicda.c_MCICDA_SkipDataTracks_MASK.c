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
typedef  int /*<<< orphan*/  WINE_MCICDAUDIO ;
struct TYPE_6__ {int FirstTrack; int LastTrack; TYPE_1__* TrackData; } ;
struct TYPE_5__ {int Control; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_2__ CDROM_TOC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__*) ; 
 scalar_t__ MCIERR_OUTOFRANGE ; 

__attribute__((used)) static DWORD FUNC3(WINE_MCICDAUDIO* wmcda,DWORD *frame)
{
  int i;
  DWORD br;
  CDROM_TOC toc;
  if (!FUNC2(wmcda, &toc, &br))
    return FUNC1(wmcda);

  if (*frame < FUNC0(toc,toc.FirstTrack) ||
      *frame >= FUNC0(toc,toc.LastTrack+1)) /* lead-out */
    return MCIERR_OUTOFRANGE;
  for(i=toc.LastTrack+1;i>toc.FirstTrack;i--)
    if ( FUNC0(toc, i) <= *frame ) break;
  /* i points to last track whose start address is not greater than frame.
   * Now skip non-audio tracks */
  for(;i<=toc.LastTrack;i++)
    if ( ! (toc.TrackData[i-toc.FirstTrack].Control & 4) )
      break;
  /* The frame will be an address in the next audio track or
   * address of lead-out. */
  if ( FUNC0(toc, i) > *frame )
    *frame = FUNC0(toc, i);
  /* Lead-out is an invalid seek position (on Linux as well). */
  if (*frame == FUNC0(toc,toc.LastTrack+1))
     (*frame)--;
  return 0;
}