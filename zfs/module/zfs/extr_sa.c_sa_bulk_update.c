
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int dmu_tx_t ;


 int ASSERT (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_update_impl (TYPE_1__*,int *,int,int *) ;

int
sa_bulk_update(sa_handle_t *hdl, sa_bulk_attr_t *attrs, int count, dmu_tx_t *tx)
{
 int error;

 ASSERT(hdl);
 mutex_enter(&hdl->sa_lock);
 error = sa_bulk_update_impl(hdl, attrs, count, tx);
 mutex_exit(&hdl->sa_lock);
 return (error);
}
