
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ zvol_snapdev_cb_arg_t ;
typedef int uint64_t ;
typedef int fstrans_cookie_t ;


 int DS_FIND_SNAPSHOTS ;
 int dmu_objset_find (char*,int ,TYPE_1__*,int ) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int zvol_set_snapdev_cb ;

__attribute__((used)) static void
zvol_set_snapdev_impl(char *name, uint64_t snapdev)
{
 zvol_snapdev_cb_arg_t arg = {snapdev};
 fstrans_cookie_t cookie = spl_fstrans_mark();




 dmu_objset_find(name, zvol_set_snapdev_cb, &arg, DS_FIND_SNAPSHOTS);
 spl_fstrans_unmark(cookie);
}
