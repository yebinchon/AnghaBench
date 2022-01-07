
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info_sector {void* boot_sign; void* next_cluster; void* free_clusters; void* signature; void* magic; } ;


 void* htole32 (int) ;
 int memset (struct info_sector*,int ,int) ;

__attribute__((used)) static void init_fsinfo(struct info_sector *i)
{
    memset(i, 0, sizeof (struct info_sector));
    i->magic = htole32(0x41615252);
    i->signature = htole32(0x61417272);
    i->free_clusters = htole32(-1);
    i->next_cluster = htole32(2);
    i->boot_sign = htole32(0xaa550000);
}
