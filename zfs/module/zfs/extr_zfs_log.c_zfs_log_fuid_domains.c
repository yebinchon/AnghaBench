
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ z_domain_str_sz; int z_domains; } ;
typedef TYPE_1__ zfs_fuid_info_t ;
struct TYPE_8__ {scalar_t__ z_domain; } ;
typedef TYPE_2__ zfs_fuid_domain_t ;
typedef int caddr_t ;


 int bcopy (void*,void*,void*) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 void* strlen (scalar_t__) ;

__attribute__((used)) static void *
zfs_log_fuid_domains(zfs_fuid_info_t *fuidp, void *start)
{
 zfs_fuid_domain_t *zdomain;


 if (fuidp->z_domain_str_sz != 0) {
  for (zdomain = list_head(&fuidp->z_domains); zdomain;
      zdomain = list_next(&fuidp->z_domains, zdomain)) {
   bcopy((void *)zdomain->z_domain, start,
       strlen(zdomain->z_domain) + 1);
   start = (caddr_t)start +
       strlen(zdomain->z_domain) + 1;
  }
 }
 return (start);
}
