
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pl_prop; struct TYPE_4__* pl_next; int pl_all; int pl_fixed; int pl_width; } ;
typedef TYPE_1__ zprop_list_t ;
struct TYPE_5__ {TYPE_1__** last; int type; int hdl; } ;
typedef TYPE_2__ expand_data_t ;


 int B_TRUE ;
 int ZPROP_CONT ;
 int ZPROP_INVAL ;
 TYPE_1__* zfs_alloc (int ,int) ;
 int zprop_width (int,int *,int ) ;

int
zprop_expand_list_cb(int prop, void *cb)
{
 zprop_list_t *entry;
 expand_data_t *edp = cb;

 if ((entry = zfs_alloc(edp->hdl, sizeof (zprop_list_t))) == ((void*)0))
  return (ZPROP_INVAL);

 entry->pl_prop = prop;
 entry->pl_width = zprop_width(prop, &entry->pl_fixed, edp->type);
 entry->pl_all = B_TRUE;

 *(edp->last) = entry;
 edp->last = &entry->pl_next;

 return (ZPROP_CONT);
}
