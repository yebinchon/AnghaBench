
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sa_share_impl_t ;
struct TYPE_2__ {char* shareopts; } ;


 TYPE_1__* FSINFO (int ,int ) ;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int foreach_nfs_host (int ,int ,char*) ;
 int free (char*) ;
 int get_linux_shareopts (char*,char**) ;
 int nfs_available () ;
 int nfs_enable_share_one ;
 int nfs_fstype ;

__attribute__((used)) static int
nfs_enable_share(sa_share_impl_t impl_share)
{
 char *shareopts, *linux_opts;
 int rc;

 if (!nfs_available()) {
  return (SA_SYSTEM_ERR);
 }

 shareopts = FSINFO(impl_share, nfs_fstype)->shareopts;

 if (shareopts == ((void*)0))
  return (SA_OK);

 rc = get_linux_shareopts(shareopts, &linux_opts);

 if (rc != SA_OK)
  return (rc);

 rc = foreach_nfs_host(impl_share, nfs_enable_share_one, linux_opts);

 free(linux_opts);

 return (rc);
}
