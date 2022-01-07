
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* sa_share_impl_t ;
struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__* ops; } ;
typedef TYPE_3__ sa_fstype_t ;
struct TYPE_14__ {TYPE_2__* resource; } ;
struct TYPE_12__ {struct TYPE_12__* fsinfo; struct TYPE_12__* dataset; struct TYPE_12__* sharepath; } ;
struct TYPE_11__ {int (* clear_shareopts ) (TYPE_2__*) ;} ;


 TYPE_8__* FSINFO (TYPE_2__*,TYPE_3__*) ;
 int free (TYPE_2__*) ;
 TYPE_3__* fstypes ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
free_share(sa_share_impl_t impl_share)
{
 sa_fstype_t *fstype;

 fstype = fstypes;
 while (fstype != ((void*)0)) {
  fstype->ops->clear_shareopts(impl_share);

  free(FSINFO(impl_share, fstype)->resource);

  fstype = fstype->next;
 }

 free(impl_share->sharepath);
 free(impl_share->dataset);
 free(impl_share->fsinfo);
 free(impl_share);
}
