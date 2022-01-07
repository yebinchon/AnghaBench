
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int iso_extension_mask_t ;
struct TYPE_8__ {scalar_t__ u_joliet_level; int svd; int pvd; } ;
typedef TYPE_1__ iso9660_t ;
struct TYPE_9__ {int* escape_sequences; int type; } ;
typedef TYPE_2__ iso9660_svd_t ;


 int ISO_EXTENSION_JOLIET_LEVEL1 ;
 int ISO_EXTENSION_JOLIET_LEVEL2 ;
 int ISO_EXTENSION_JOLIET_LEVEL3 ;
 scalar_t__ ISO_PVD_SECTOR ;
 scalar_t__ ISO_VD_END ;
 scalar_t__ ISO_VD_SUPPLEMENTARY ;
 int cdio_info (char*,...) ;
 scalar_t__ from_711 (int ) ;
 int iso9660_ifs_read_pvd (TYPE_1__*,int *) ;
 scalar_t__ iso9660_iso_seek_read (TYPE_1__*,TYPE_2__*,scalar_t__,int) ;
 int memcpy (int *,TYPE_2__*,int) ;

bool
iso9660_ifs_read_superblock (iso9660_t *p_iso,
        iso_extension_mask_t iso_extension_mask)
{
  iso9660_svd_t p_svd;
  int i;

  if (!p_iso || !iso9660_ifs_read_pvd(p_iso, &(p_iso->pvd)))
    return 0;

  p_iso->u_joliet_level = 0;


  for (i=1; (0 != iso9660_iso_seek_read (p_iso, &p_svd, ISO_PVD_SECTOR+i, 1)); i++) {
    if (ISO_VD_END == from_711(p_svd.type) )
      break;
    if ( ISO_VD_SUPPLEMENTARY == from_711(p_svd.type) ) {

      if (p_iso->u_joliet_level == 0)
        memcpy(&(p_iso->svd), &p_svd, sizeof(iso9660_svd_t));
      if (p_svd.escape_sequences[0] == 0x25
   && p_svd.escape_sequences[1] == 0x2f) {
 switch (p_svd.escape_sequences[2]) {
 case 0x40:
   if (iso_extension_mask & ISO_EXTENSION_JOLIET_LEVEL1)
     p_iso->u_joliet_level = 1;
   break;
 case 0x43:
   if (iso_extension_mask & ISO_EXTENSION_JOLIET_LEVEL2)
     p_iso->u_joliet_level = 2;
   break;
 case 0x45:
   if (iso_extension_mask & ISO_EXTENSION_JOLIET_LEVEL3)
     p_iso->u_joliet_level = 3;
   break;
 default:
   cdio_info("Supplementary Volume Descriptor found, but not Joliet");
 }
 if (p_iso->u_joliet_level > 0) {
   cdio_info("Found Extension: Joliet Level %d", p_iso->u_joliet_level);
 }
      }
    }
  }

  return 1;
}
