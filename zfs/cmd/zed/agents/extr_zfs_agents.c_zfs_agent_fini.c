
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fmd_hdl_t ;
struct TYPE_5__ {int ae_nvl; } ;
typedef TYPE_1__ agent_event_t ;


 int LOG_INFO ;
 int _zfs_diagnosis_fini (int *) ;
 int _zfs_retire_fini (int *) ;
 int agent_cond ;
 int agent_events ;
 int agent_exiting ;
 int fmd_hdl_unregister (int *) ;
 int * fmd_module_hdl (char*) ;
 int free (TYPE_1__*) ;
 int g_agents_tid ;
 int * g_zfs_hdl ;
 int list_destroy (int *) ;
 TYPE_1__* list_head (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int nvlist_free (int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;
 int zed_log_msg (int ,char*) ;
 int zfs_slm_fini () ;

void
zfs_agent_fini(void)
{
 fmd_hdl_t *hdl;
 agent_event_t *event;

 agent_exiting = 1;
 (void) pthread_cond_signal(&agent_cond);


 (void) pthread_join(g_agents_tid, ((void*)0));


 while ((event = (list_head(&agent_events))) != ((void*)0)) {
  list_remove(&agent_events, event);
  nvlist_free(event->ae_nvl);
  free(event);
 }

 list_destroy(&agent_events);

 if ((hdl = fmd_module_hdl("zfs-retire")) != ((void*)0)) {
  _zfs_retire_fini(hdl);
  fmd_hdl_unregister(hdl);
 }
 if ((hdl = fmd_module_hdl("zfs-diagnosis")) != ((void*)0)) {
  _zfs_diagnosis_fini(hdl);
  fmd_hdl_unregister(hdl);
 }

 zed_log_msg(LOG_INFO, "Add Agent: fini");
 zfs_slm_fini();

 g_zfs_hdl = ((void*)0);
}
