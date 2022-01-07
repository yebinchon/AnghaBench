
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int track_t ;
typedef int lba_t ;
struct TYPE_4__ {int (* get_track_pregap_lba ) (int ,int ) ;} ;
struct TYPE_5__ {int env; TYPE_1__ op; } ;
typedef TYPE_2__ CdIo_t ;


 int CDIO_INVALID_LBA ;
 int cdio_info (char*) ;
 int stub1 (int ,int ) ;

lba_t
cdio_get_track_pregap_lba(const CdIo_t *p_cdio, track_t u_track)
{
  if (((void*)0) == p_cdio) {
    cdio_info("Null CdIo object passed\n");
    return CDIO_INVALID_LBA;
  }

  if (p_cdio->op.get_track_pregap_lba) {
    return p_cdio->op.get_track_pregap_lba (p_cdio->env, u_track);
  } else {
    return CDIO_INVALID_LBA;
  }
}
