
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ track_t ;
typedef scalar_t__ lsn_t ;
typedef int CdIo_t ;


 scalar_t__ CDIO_INVALID_LSN ;
 scalar_t__ cdio_get_track_lsn (int const*,scalar_t__) ;

lsn_t
cdio_get_track_last_lsn(const CdIo_t *p_cdio, track_t u_track)
{
  lsn_t lsn = cdio_get_track_lsn(p_cdio, u_track+1);

  if (CDIO_INVALID_LSN == lsn) return CDIO_INVALID_LSN;

  return lsn - 1;
}
