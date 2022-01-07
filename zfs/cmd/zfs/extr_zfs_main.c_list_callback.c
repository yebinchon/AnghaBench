
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_4__ {scalar_t__ cb_first; int cb_scripted; } ;
typedef TYPE_1__ list_cbdata_t ;


 scalar_t__ B_FALSE ;
 int print_dataset (int *,TYPE_1__*) ;
 int print_header (TYPE_1__*) ;

__attribute__((used)) static int
list_callback(zfs_handle_t *zhp, void *data)
{
 list_cbdata_t *cbp = data;

 if (cbp->cb_first) {
  if (!cbp->cb_scripted)
   print_header(cbp);
  cbp->cb_first = B_FALSE;
 }

 print_dataset(zhp, cbp);

 return (0);
}
