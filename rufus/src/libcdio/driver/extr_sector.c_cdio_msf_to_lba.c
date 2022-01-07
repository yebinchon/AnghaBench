
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int f; int s; int m; } ;
typedef TYPE_1__ msf_t ;
typedef scalar_t__ lba_t ;


 scalar_t__ CDIO_CD_FRAMES_PER_SEC ;
 scalar_t__ CDIO_CD_SECS_PER_MIN ;
 int cdio_assert (int) ;
 scalar_t__ cdio_from_bcd8 (int ) ;

lba_t
cdio_msf_to_lba (const msf_t *msf)
{
  uint32_t lba = 0;

  cdio_assert (msf != 0);

  lba = cdio_from_bcd8 (msf->m);
  lba *= CDIO_CD_SECS_PER_MIN;

  lba += cdio_from_bcd8 (msf->s);
  lba *= CDIO_CD_FRAMES_PER_SEC;

  lba += cdio_from_bcd8 (msf->f);

  return lba;
}
