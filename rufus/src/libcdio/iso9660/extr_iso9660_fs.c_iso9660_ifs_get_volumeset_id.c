
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ volume_set_id; } ;
struct TYPE_6__ {scalar_t__ volume_set_id; } ;
struct TYPE_8__ {TYPE_2__ svd; TYPE_1__ pvd; } ;
typedef TYPE_3__ iso9660_t ;
typedef int cdio_utf8_t ;


 int ISO_MAX_VOLUMESET_ID ;
 int get_member_id (TYPE_3__*,int **,char*,char*,int ) ;

bool iso9660_ifs_get_volumeset_id(iso9660_t *p_iso,
              cdio_utf8_t **p_psz_volumeset_id)
{
  return get_member_id(p_iso, p_psz_volumeset_id,
                       (char*)p_iso->pvd.volume_set_id,
                       (char*)p_iso->svd.volume_set_id,
                       ISO_MAX_VOLUMESET_ID);
}
