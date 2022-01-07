
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int pvd_lba; } ;
typedef TYPE_1__ udf_t ;
struct TYPE_6__ {unsigned int* vol_ident; } ;
typedef TYPE_2__ udf_pvd_t ;


 scalar_t__ DRIVER_OP_SUCCESS ;
 int MIN (unsigned int,unsigned int) ;
 int UDF_BLOCKSIZE ;
 int UDF_VOLID_SIZE ;
 int free (char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;
 scalar_t__ udf_read_sectors (TYPE_1__*,int **,int ,int) ;
 char* unicode16_decode (int *,unsigned int) ;

int
udf_get_volume_id(udf_t *p_udf, char *psz_volid, unsigned int i_volid)
{
  uint8_t data[UDF_BLOCKSIZE];
  const udf_pvd_t *p_pvd = (udf_pvd_t *) &data;
  char* r;
  unsigned int volid_len;


  if (psz_volid != ((void*)0))
    psz_volid[0] = 0;


  if ( DRIVER_OP_SUCCESS != udf_read_sectors(p_udf, &data, p_udf->pvd_lba, 1) )
    return 0;

  volid_len = p_pvd->vol_ident[UDF_VOLID_SIZE-1];
  if(volid_len > UDF_VOLID_SIZE-1) {

    volid_len = UDF_VOLID_SIZE-1;
  }

  r = unicode16_decode((uint8_t *) p_pvd->vol_ident, volid_len);
  if (r == ((void*)0))
    return 0;

  volid_len = strlen(r)+1;
  if (psz_volid != ((void*)0)) {
    strncpy(psz_volid, r, MIN(volid_len, i_volid));
    psz_volid[i_volid-1] = 0;
  }
  free(r);

  return volid_len;
}
