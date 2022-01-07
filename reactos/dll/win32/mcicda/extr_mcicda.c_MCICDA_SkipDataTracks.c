
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINE_MCICDAUDIO ;
struct TYPE_6__ {int FirstTrack; int LastTrack; TYPE_1__* TrackData; } ;
struct TYPE_5__ {int Control; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ CDROM_TOC ;


 scalar_t__ FRAME_OF_TOC (TYPE_2__,int) ;
 scalar_t__ MCICDA_GetError (int *) ;
 int MCICDA_ReadTOC (int *,TYPE_2__*,scalar_t__*) ;
 scalar_t__ MCIERR_OUTOFRANGE ;

__attribute__((used)) static DWORD MCICDA_SkipDataTracks(WINE_MCICDAUDIO* wmcda,DWORD *frame)
{
  int i;
  DWORD br;
  CDROM_TOC toc;
  if (!MCICDA_ReadTOC(wmcda, &toc, &br))
    return MCICDA_GetError(wmcda);

  if (*frame < FRAME_OF_TOC(toc,toc.FirstTrack) ||
      *frame >= FRAME_OF_TOC(toc,toc.LastTrack+1))
    return MCIERR_OUTOFRANGE;
  for(i=toc.LastTrack+1;i>toc.FirstTrack;i--)
    if ( FRAME_OF_TOC(toc, i) <= *frame ) break;


  for(;i<=toc.LastTrack;i++)
    if ( ! (toc.TrackData[i-toc.FirstTrack].Control & 4) )
      break;


  if ( FRAME_OF_TOC(toc, i) > *frame )
    *frame = FRAME_OF_TOC(toc, i);

  if (*frame == FRAME_OF_TOC(toc,toc.LastTrack+1))
     (*frame)--;
  return 0;
}
