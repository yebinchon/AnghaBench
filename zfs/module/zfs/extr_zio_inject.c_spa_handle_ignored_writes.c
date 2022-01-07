
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int spa_t ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ zi_cmd; int zi_duration; scalar_t__ zi_timer; } ;
struct TYPE_7__ {TYPE_1__ zi_record; int * zi_spa; } ;
typedef TYPE_2__ inject_handler_t ;


 int RW_READER ;
 int VERIFY (int) ;
 scalar_t__ ZINJECT_IGNORED_WRITES ;
 int ddi_get_lbolt64 () ;
 scalar_t__ ddi_time_after64 (scalar_t__,int ) ;
 int hz ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ spa_syncing_txg (int *) ;
 scalar_t__ zio_injection_enabled ;

void
spa_handle_ignored_writes(spa_t *spa)
{
 inject_handler_t *handler;

 if (zio_injection_enabled == 0)
  return;

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {

  if (spa != handler->zi_spa ||
      handler->zi_record.zi_cmd != ZINJECT_IGNORED_WRITES)
   continue;

  if (handler->zi_record.zi_duration > 0) {
   VERIFY(handler->zi_record.zi_timer == 0 ||
       ddi_time_after64(
       (int64_t)handler->zi_record.zi_timer +
       handler->zi_record.zi_duration * hz,
       ddi_get_lbolt64()));
  } else {

   VERIFY(handler->zi_record.zi_timer == 0 ||
       handler->zi_record.zi_timer -
       handler->zi_record.zi_duration >=
       spa_syncing_txg(spa));
  }
 }

 rw_exit(&inject_lock);
}
