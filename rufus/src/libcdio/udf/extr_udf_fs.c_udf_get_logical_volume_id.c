
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int lvd_lba; } ;
typedef TYPE_1__ udf_t ;
struct TYPE_7__ {int * logvol_id; } ;
typedef TYPE_2__ logical_vol_desc_t ;


 scalar_t__ DRIVER_OP_SUCCESS ;
 int MIN (int,unsigned int) ;
 int UDF_BLOCKSIZE ;
 int free (char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;
 scalar_t__ udf_read_sectors (TYPE_1__*,TYPE_2__*,int ,int) ;
 char* unicode16_decode (int *,int ) ;

int
udf_get_logical_volume_id(udf_t *p_udf, char *psz_logvolid, unsigned int i_logvolid)
{
  uint8_t data[UDF_BLOCKSIZE];
  logical_vol_desc_t *p_logvol = (logical_vol_desc_t *) &data;
  char* r;
  int logvolid_len;


  if (psz_logvolid != ((void*)0))
    psz_logvolid[0] = 0;

  if (DRIVER_OP_SUCCESS != udf_read_sectors (p_udf, p_logvol, p_udf->lvd_lba, 1) )
    return 0;

  r = unicode16_decode((uint8_t *) p_logvol->logvol_id, p_logvol->logvol_id[127]);
  if (r == ((void*)0))
    return 0;

  logvolid_len = strlen(r)+1;
  if (psz_logvolid != ((void*)0)) {
    strncpy(psz_logvolid, r, MIN(logvolid_len, i_logvolid));
    psz_logvolid[i_logvolid-1] = 0;
  }
  free(r);

  return logvolid_len;
}
