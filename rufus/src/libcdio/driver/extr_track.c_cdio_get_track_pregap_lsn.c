
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int track_t ;
typedef int lsn_t ;
typedef int CdIo_t ;


 int cdio_get_track_pregap_lba (int const*,int ) ;
 int cdio_lba_to_lsn (int ) ;

lsn_t
cdio_get_track_pregap_lsn(const CdIo_t *p_cdio, track_t u_track)
{
  return cdio_lba_to_lsn(cdio_get_track_pregap_lba(p_cdio, u_track));
}
