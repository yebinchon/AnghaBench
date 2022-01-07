
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int cb_namewidth; int cb_verbose; int cb_name_flags; } ;
typedef TYPE_1__ list_cbdata_t ;


 int get_namewidth (int *,int,int ,int ) ;

__attribute__((used)) static int
get_namewidth_list(zpool_handle_t *zhp, void *data)
{
 list_cbdata_t *cb = data;
 int width;

 width = get_namewidth(zhp, cb->cb_namewidth, cb->cb_name_flags,
     cb->cb_verbose);

 if (width < 9)
  width = 9;

 cb->cb_namewidth = width;

 return (0);
}
