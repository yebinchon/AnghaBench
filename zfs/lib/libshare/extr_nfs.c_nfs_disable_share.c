
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_share_impl_t ;


 int SA_OK ;
 int foreach_nfs_host (int ,int ,int *) ;
 int nfs_available () ;
 int nfs_disable_share_one ;

__attribute__((used)) static int
nfs_disable_share(sa_share_impl_t impl_share)
{
 if (!nfs_available()) {




  return (SA_OK);
 }

 return (foreach_nfs_host(impl_share, nfs_disable_share_one, ((void*)0)));
}
