
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sa_share_impl_t ;
struct TYPE_6__ {char* shareopts; } ;
struct TYPE_5__ {int sharepath; int dataset; } ;


 TYPE_3__* FSINFO (TYPE_1__*,int ) ;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int smb_available () ;
 int smb_enable_share_one (int ,int ) ;
 int smb_fstype ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
smb_enable_share(sa_share_impl_t impl_share)
{
 char *shareopts;

 if (!smb_available())
  return (SA_SYSTEM_ERR);

 shareopts = FSINFO(impl_share, smb_fstype)->shareopts;
 if (shareopts == ((void*)0))
  return (SA_SYSTEM_ERR);

 if (strcmp(shareopts, "off") == 0)
  return (SA_OK);


 return (smb_enable_share_one(impl_share->dataset,
     impl_share->sharepath));
}
