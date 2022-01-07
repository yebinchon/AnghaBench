
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* version; int id; void* type; } ;
typedef TYPE_1__ iso_volume_descriptor_t ;
typedef int ied ;


 int ISO9660_DCHARS ;
 int ISO_BLOCKSIZE ;
 int ISO_STANDARD_ID ;
 int ISO_VD_END ;
 int ISO_VERSION ;
 int cdio_assert (int) ;
 int iso9660_strncpy_pad (int ,int ,int,int ) ;
 int memcpy (void*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* to_711 (int ) ;

void
iso9660_set_evd(void *pd)
{
  iso_volume_descriptor_t ied;

  cdio_assert (sizeof(iso_volume_descriptor_t) == ISO_BLOCKSIZE);

  cdio_assert (pd != ((void*)0));

  memset(&ied, 0, sizeof(ied));

  ied.type = to_711(ISO_VD_END);
  iso9660_strncpy_pad (ied.id, ISO_STANDARD_ID, sizeof(ied.id),
                       ISO9660_DCHARS);
  ied.version = to_711(ISO_VERSION);

  memcpy(pd, &ied, sizeof(ied));
}
