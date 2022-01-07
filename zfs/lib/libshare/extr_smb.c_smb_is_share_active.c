
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int path; } ;
typedef TYPE_1__ smb_share_t ;
typedef TYPE_2__* sa_share_impl_t ;
typedef int boolean_t ;
struct TYPE_6__ {int sharepath; } ;


 int B_FALSE ;
 int B_TRUE ;
 int smb_available () ;
 int smb_retrieve_shares () ;
 TYPE_1__* smb_shares ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static boolean_t
smb_is_share_active(sa_share_impl_t impl_share)
{
 smb_share_t *iter = smb_shares;

 if (!smb_available())
  return (B_FALSE);


 smb_retrieve_shares();

 while (iter != ((void*)0)) {
  if (strcmp(impl_share->sharepath, iter->path) == 0)
   return (B_TRUE);

  iter = iter->next;
 }

 return (B_FALSE);
}
