
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int parent; int name; int extent; int name_len; } ;
typedef TYPE_1__ iso_path_table_t ;


 scalar_t__ ISO_BLOCKSIZE ;
 int cdio_assert (int) ;
 scalar_t__ from_721 (int ) ;
 scalar_t__ iso9660_pathtable_get_size (void*) ;
 int memcpy (int ,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* pathtable_get_entry (void*,unsigned int) ;
 int pathtable_get_size_and_entries (void*,int *,unsigned int*) ;
 int strlen (char const*) ;
 int to_711 (size_t) ;
 int to_721 (scalar_t__) ;
 int to_731 (int ) ;

uint16_t
iso9660_pathtable_l_add_entry (void *pt,
                               const char name[],
                               uint32_t extent,
                               uint16_t parent)
{
  iso_path_table_t *ipt =
    (iso_path_table_t *)((char *)pt + iso9660_pathtable_get_size (pt));
  size_t name_len = strlen (name) ? strlen (name) : 1;
  unsigned int entrynum = 0;

  cdio_assert (iso9660_pathtable_get_size (pt) < ISO_BLOCKSIZE);

  memset (ipt, 0, sizeof (iso_path_table_t) + name_len);

  ipt->name_len = to_711 (name_len);
  ipt->extent = to_731 (extent);
  ipt->parent = to_721 (parent);
  memcpy (ipt->name, name, name_len);

  pathtable_get_size_and_entries (pt, ((void*)0), &entrynum);

  if (entrynum > 1)
    {
      const iso_path_table_t *ipt2
        = pathtable_get_entry (pt, entrynum - 2);

      cdio_assert (ipt2 != ((void*)0));

      cdio_assert (from_721 (ipt2->parent) <= parent);
    }

  return entrynum;
}
