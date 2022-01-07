
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int sa_bulk_attr_t ;


 int ASSERT (TYPE_1__*) ;
 TYPE_1__* MUTEX_HELD (int *) ;
 int sa_lookup_impl (TYPE_1__*,int *,int) ;

int
sa_bulk_lookup_locked(sa_handle_t *hdl, sa_bulk_attr_t *attrs, int count)
{
 ASSERT(hdl);
 ASSERT(MUTEX_HELD(&hdl->sa_lock));
 return (sa_lookup_impl(hdl, attrs, count));
}
