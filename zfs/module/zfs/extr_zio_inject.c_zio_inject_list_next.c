
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zinject_record_t ;
struct TYPE_5__ {int zi_id; int zi_spa; int zi_record; } ;
typedef TYPE_1__ inject_handler_t ;


 int ENOENT ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_name (int ) ;
 int spa_namespace_lock ;
 int strncpy (char*,int ,size_t) ;

int
zio_inject_list_next(int *id, char *name, size_t buflen,
    zinject_record_t *record)
{
 inject_handler_t *handler;
 int ret;

 mutex_enter(&spa_namespace_lock);
 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler))
  if (handler->zi_id > *id)
   break;

 if (handler) {
  *record = handler->zi_record;
  *id = handler->zi_id;
  (void) strncpy(name, spa_name(handler->zi_spa), buflen);
  ret = 0;
 } else {
  ret = SET_ERROR(ENOENT);
 }

 rw_exit(&inject_lock);
 mutex_exit(&spa_namespace_lock);

 return (ret);
}
