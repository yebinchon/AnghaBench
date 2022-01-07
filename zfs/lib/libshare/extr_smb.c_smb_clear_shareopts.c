
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sa_share_impl_t ;
struct TYPE_2__ {int * shareopts; } ;


 TYPE_1__* FSINFO (int ,int ) ;
 int free (int *) ;
 int smb_fstype ;

__attribute__((used)) static void
smb_clear_shareopts(sa_share_impl_t impl_share)
{
 free(FSINFO(impl_share, smb_fstype)->shareopts);
 FSINFO(impl_share, smb_fstype)->shareopts = ((void*)0);
}
