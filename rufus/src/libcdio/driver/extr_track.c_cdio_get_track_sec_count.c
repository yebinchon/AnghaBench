
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int track_t ;
typedef int CdIo_t ;


 int cdio_get_num_tracks (int const*) ;
 unsigned int cdio_get_track_lba (int const*,int) ;

unsigned int
cdio_get_track_sec_count(const CdIo_t *p_cdio, track_t u_track)
{
  const track_t u_tracks = cdio_get_num_tracks(p_cdio);

  if (u_track >=1 && u_track <= u_tracks)
    return ( cdio_get_track_lba(p_cdio, u_track+1)
             - cdio_get_track_lba(p_cdio, u_track) );
  return 0;
}
