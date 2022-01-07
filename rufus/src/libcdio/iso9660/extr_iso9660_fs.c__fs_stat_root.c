
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int iso_extension_mask_t ;
typedef int iso9660_stat_t ;
typedef int iso9660_dir_t ;
struct TYPE_9__ {int root_directory_record; } ;
struct TYPE_8__ {int root_directory_record; } ;
struct TYPE_10__ {scalar_t__ u_joliet_level; TYPE_2__ pvd; TYPE_1__ svd; } ;
typedef TYPE_3__ generic_img_private_t ;
typedef int bool_3way_t ;
struct TYPE_11__ {scalar_t__ env; } ;
typedef TYPE_4__ CdIo_t ;




 int ISO_EXTENSION_ALL ;
 int ISO_EXTENSION_JOLIET ;
 int * _iso9660_dir_to_statbuf (int *,int *,int ,scalar_t__) ;
 int cdio_get_discmode (TYPE_4__*) ;
 int cdio_warn (char*) ;
 int dunno ;
 int iso9660_fs_read_superblock (TYPE_4__*,int ) ;
 int nope ;
 int yep ;

__attribute__((used)) static iso9660_stat_t *
_fs_stat_root (CdIo_t *p_cdio)
{

  if (!p_cdio) return ((void*)0);

  {
    iso_extension_mask_t iso_extension_mask = ISO_EXTENSION_ALL;
    generic_img_private_t *p_env = (generic_img_private_t *) p_cdio->env;
    iso9660_dir_t *p_iso9660_dir;
    iso9660_stat_t *p_stat;
    bool_3way_t b_xa;

    if (!p_env->u_joliet_level)
      iso_extension_mask &= ~ISO_EXTENSION_JOLIET;


    if ( !iso9660_fs_read_superblock (p_cdio, iso_extension_mask) ) {
      cdio_warn("Could not read ISO-9660 Superblock.");
      return ((void*)0);
    }

    switch(cdio_get_discmode(p_cdio)) {
    case 128:
      b_xa = yep;
      break;
    case 129:
      b_xa = nope;
      break;
    default:
      b_xa = dunno;
    }






    p_iso9660_dir = &(p_env->pvd.root_directory_record) ;


    p_stat = _iso9660_dir_to_statbuf (p_iso9660_dir, ((void*)0),
          b_xa, p_env->u_joliet_level);
    return p_stat;
  }

}
