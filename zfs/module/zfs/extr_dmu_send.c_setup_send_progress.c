
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dmu_send_params {TYPE_1__* to_ds; int off; int outfd; } ;
struct TYPE_7__ {int dss_proc; int dss_off; int dss_outfd; } ;
typedef TYPE_2__ dmu_sendstatus_t ;
struct TYPE_6__ {int ds_sendstream_lock; int ds_sendstreams; } ;


 int KM_SLEEP ;
 int curproc ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int list_insert_head (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static dmu_sendstatus_t *
setup_send_progress(struct dmu_send_params *dspp)
{
 dmu_sendstatus_t *dssp = kmem_zalloc(sizeof (*dssp), KM_SLEEP);
 dssp->dss_outfd = dspp->outfd;
 dssp->dss_off = dspp->off;
 dssp->dss_proc = curproc;
 mutex_enter(&dspp->to_ds->ds_sendstream_lock);
 list_insert_head(&dspp->to_ds->ds_sendstreams, dssp);
 mutex_exit(&dspp->to_ds->ds_sendstream_lock);
 return (dssp);
}
