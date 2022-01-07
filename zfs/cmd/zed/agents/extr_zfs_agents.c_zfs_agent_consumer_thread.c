
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ae_nvl; int ae_subclass; int ae_class; } ;
typedef TYPE_1__ agent_event_t ;


 int LOG_INFO ;
 int agent_cond ;
 int agent_events ;
 scalar_t__ agent_exiting ;
 int agent_lock ;
 int free (TYPE_1__*) ;
 TYPE_1__* list_head (int *) ;
 scalar_t__ list_is_empty (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int nvlist_free (int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int zed_log_msg (int ,char*) ;
 int zfs_agent_dispatch (int ,int ,int ) ;

__attribute__((used)) static void *
zfs_agent_consumer_thread(void *arg)
{
 for (;;) {
  agent_event_t *event;

  (void) pthread_mutex_lock(&agent_lock);


  while (!agent_exiting && list_is_empty(&agent_events))
   (void) pthread_cond_wait(&agent_cond, &agent_lock);

  if (agent_exiting) {
   (void) pthread_mutex_unlock(&agent_lock);
   zed_log_msg(LOG_INFO, "zfs_agent_consumer_thread: "
       "exiting");
   return (((void*)0));
  }

  if ((event = (list_head(&agent_events))) != ((void*)0)) {
   list_remove(&agent_events, event);

   (void) pthread_mutex_unlock(&agent_lock);


   zfs_agent_dispatch(event->ae_class, event->ae_subclass,
       event->ae_nvl);

   nvlist_free(event->ae_nvl);
   free(event);
   continue;
  }

  (void) pthread_mutex_unlock(&agent_lock);
 }

 return (((void*)0));
}
