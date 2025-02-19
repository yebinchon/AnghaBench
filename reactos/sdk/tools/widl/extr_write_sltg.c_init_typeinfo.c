
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attrs; } ;
typedef TYPE_2__ type_t ;
struct TYPE_4__ {int unknown1; int unknown2; int typekind; scalar_t__ flags; } ;
struct sltg_typeinfo_header {int magic; int href_offset; int res06; int res0e; int res16; int member_offset; scalar_t__ res1e; TYPE_1__ misc; int version; } ;
struct sltg_hrefmap {int href_count; int* href; } ;
struct sltg_hrefinfo {int dummy; } ;


 int ATTR_VERSION ;
 int get_attrv (int ,int ) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void init_typeinfo(struct sltg_typeinfo_header *ti, const type_t *type, int kind,
                          const struct sltg_hrefmap *hrefmap)
{
    ti->magic = 0x0501;
    ti->href_offset = -1;
    ti->res06 = -1;
    ti->res0e = -1;
    ti->version = get_attrv(type->attrs, ATTR_VERSION);
    ti->res16 = 0xfffe0000;
    ti->misc.unknown1 = 0x02;
    ti->misc.flags = 0;
    ti->misc.unknown2 = 0x02;
    ti->misc.typekind = kind;
    ti->res1e = 0;

    ti->member_offset = sizeof(*ti);

    if (hrefmap->href_count)
    {
        char name[64];
        int i, hrefinfo_size;

        hrefinfo_size = sizeof(struct sltg_hrefinfo);

        for (i = 0; i < hrefmap->href_count; i++)
        {
            sprintf(name, "*\\Rffff*#%x", hrefmap->href[i]);
            hrefinfo_size += 8 + 2 + strlen(name);
        }

        ti->href_offset = ti->member_offset;
        ti->member_offset += hrefinfo_size;
    }
}
