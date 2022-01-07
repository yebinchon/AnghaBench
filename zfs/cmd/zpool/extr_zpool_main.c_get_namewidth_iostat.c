
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int cb_namewidth; int cb_verbose; int cb_name_flags; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int get_columns () ;
 int get_namewidth (int *,int,int ,int ) ;

__attribute__((used)) static int
get_namewidth_iostat(zpool_handle_t *zhp, void *data)
{
 iostat_cbdata_t *cb = data;
 int width, columns;

 width = get_namewidth(zhp, cb->cb_namewidth, cb->cb_name_flags,
     cb->cb_verbose);
 columns = get_columns();

 if (width < 10)
  width = 10;
 if (width > columns - 42)
  width = columns - 42;

 cb->cb_namewidth = width;

 return (0);
}
