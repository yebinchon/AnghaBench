
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ dds_guid; } ;
struct TYPE_19__ {scalar_t__ zfs_type; int zfs_hdl; TYPE_1__ zfs_dmustats; } ;
typedef TYPE_2__ zfs_handle_t ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_2__* zhp; } ;
typedef TYPE_3__ iter_stack_frame_t ;
struct TYPE_21__ {int (* func ) (TYPE_2__*,int ) ;int data; TYPE_3__* stack; scalar_t__ allowrecursion; int first; } ;
typedef TYPE_4__ iter_dependents_arg_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int EZFS_RECURSIVE ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_TYPE_BOOKMARK ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int dgettext (int ,char*) ;
 int stub1 (TYPE_2__*,int ) ;
 int zfs_close (TYPE_2__*) ;
 int zfs_error (int ,int ,int ) ;
 int zfs_error_aux (int ,int ,int ) ;
 int zfs_get_name (TYPE_2__*) ;
 int zfs_iter_clones (TYPE_2__*,int (*) (TYPE_2__*,void*),TYPE_4__*) ;
 int zfs_iter_filesystems (TYPE_2__*,int (*) (TYPE_2__*,void*),TYPE_4__*) ;
 int zfs_iter_snapshots (TYPE_2__*,int ,int (*) (TYPE_2__*,void*),TYPE_4__*,int ,int ) ;

__attribute__((used)) static int
iter_dependents_cb(zfs_handle_t *zhp, void *arg)
{
 iter_dependents_arg_t *ida = arg;
 int err = 0;
 boolean_t first = ida->first;
 ida->first = B_FALSE;

 if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
  err = zfs_iter_clones(zhp, iter_dependents_cb, ida);
 } else if (zhp->zfs_type != ZFS_TYPE_BOOKMARK) {
  iter_stack_frame_t isf;
  iter_stack_frame_t *f;





  for (f = ida->stack; f != ((void*)0); f = f->next) {
   if (f->zhp->zfs_dmustats.dds_guid ==
       zhp->zfs_dmustats.dds_guid) {
    if (ida->allowrecursion) {
     zfs_close(zhp);
     return (0);
    } else {
     zfs_error_aux(zhp->zfs_hdl,
         dgettext(TEXT_DOMAIN,
         "recursive dependency at '%s'"),
         zfs_get_name(zhp));
     err = zfs_error(zhp->zfs_hdl,
         EZFS_RECURSIVE,
         dgettext(TEXT_DOMAIN,
         "cannot determine dependent "
         "datasets"));
     zfs_close(zhp);
     return (err);
    }
   }
  }

  isf.zhp = zhp;
  isf.next = ida->stack;
  ida->stack = &isf;
  err = zfs_iter_filesystems(zhp, iter_dependents_cb, ida);
  if (err == 0)
   err = zfs_iter_snapshots(zhp, B_FALSE,
       iter_dependents_cb, ida, 0, 0);
  ida->stack = isf.next;
 }

 if (!first && err == 0)
  err = ida->func(zhp, ida->data);
 else
  zfs_close(zhp);

 return (err);
}
