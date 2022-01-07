
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* a_type; void* a_flags; void* a_access_mask; void* a_who; } ;
typedef TYPE_1__ ace_t ;


 void* BSWAP_16 (void*) ;
 void* BSWAP_32 (void*) ;

void
zfs_oldace_byteswap(ace_t *ace, int ace_cnt)
{
 int i;

 for (i = 0; i != ace_cnt; i++, ace++) {
  ace->a_who = BSWAP_32(ace->a_who);
  ace->a_access_mask = BSWAP_32(ace->a_access_mask);
  ace->a_flags = BSWAP_16(ace->a_flags);
  ace->a_type = BSWAP_16(ace->a_type);
 }
}
