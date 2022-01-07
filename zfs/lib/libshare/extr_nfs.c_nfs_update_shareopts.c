
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sa_share_impl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {char* shareopts; scalar_t__ active; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 TYPE_1__* FSINFO (int ,int ) ;
 int SA_NO_MEMORY ;
 int SA_OK ;
 int free (char*) ;
 int nfs_disable_share (int ) ;
 int nfs_enable_share (int ) ;
 int nfs_fstype ;
 scalar_t__ nfs_is_share_active (int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
nfs_update_shareopts(sa_share_impl_t impl_share, const char *resource,
    const char *shareopts)
{
 char *shareopts_dup;
 boolean_t needs_reshare = B_FALSE;
 char *old_shareopts;

 FSINFO(impl_share, nfs_fstype)->active =
     nfs_is_share_active(impl_share);

 old_shareopts = FSINFO(impl_share, nfs_fstype)->shareopts;

 if (strcmp(shareopts, "on") == 0)
  shareopts = "rw,crossmnt";

 if (FSINFO(impl_share, nfs_fstype)->active && old_shareopts != ((void*)0) &&
     strcmp(old_shareopts, shareopts) != 0) {
  needs_reshare = B_TRUE;
  nfs_disable_share(impl_share);
 }

 shareopts_dup = strdup(shareopts);

 if (shareopts_dup == ((void*)0))
  return (SA_NO_MEMORY);

 if (old_shareopts != ((void*)0))
  free(old_shareopts);

 FSINFO(impl_share, nfs_fstype)->shareopts = shareopts_dup;

 if (needs_reshare)
  nfs_enable_share(impl_share);

 return (SA_OK);
}
