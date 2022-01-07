
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int name; int path; } ;
typedef TYPE_1__ smb_share_t ;
typedef TYPE_2__* sa_share_impl_t ;
struct TYPE_6__ {int sharepath; } ;


 int SA_OK ;
 int smb_available () ;
 int smb_disable_share_one (int ) ;
 TYPE_1__* smb_shares ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
smb_disable_share(sa_share_impl_t impl_share)
{
 smb_share_t *shares = smb_shares;

 if (!smb_available()) {




  return (SA_OK);
 }

 while (shares != ((void*)0)) {
  if (strcmp(impl_share->sharepath, shares->path) == 0)
   return (smb_disable_share_one(shares->name));

  shares = shares->next;
 }

 return (SA_OK);
}
