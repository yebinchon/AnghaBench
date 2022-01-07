
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** z_domain_table; } ;
typedef TYPE_1__ zfs_fuid_info_t ;
typedef int caddr_t ;


 void* strlen (void*) ;

__attribute__((used)) static void *
zfs_replay_fuid_domain_common(zfs_fuid_info_t *fuid_infop, void *start,
    int domcnt)
{
 int i;

 for (i = 0; i != domcnt; i++) {
  fuid_infop->z_domain_table[i] = start;
  start = (caddr_t)start + strlen(start) + 1;
 }

 return (start);
}
