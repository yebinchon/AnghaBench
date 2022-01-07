
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int ZVOL_HT_SIZE ;
 int kmem_free (int ,int) ;
 int list_destroy (int *) ;
 int rw_destroy (int *) ;
 int system_taskq ;
 int taskq_wait_outstanding (int ,int ) ;
 int zvol_htable ;
 int zvol_remove_minors_impl (int *) ;
 int zvol_state_list ;
 int zvol_state_lock ;

void
zvol_fini_impl(void)
{
 zvol_remove_minors_impl(((void*)0));







 taskq_wait_outstanding(system_taskq, 0);

 kmem_free(zvol_htable, ZVOL_HT_SIZE * sizeof (struct hlist_head));
 list_destroy(&zvol_state_list);
 rw_destroy(&zvol_state_lock);
}
