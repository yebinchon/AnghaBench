
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_7__ {scalar_t__ zi_cmd; } ;
struct TYPE_6__ {TYPE_2__ zi_record; int * zi_spa; } ;
typedef TYPE_1__ inject_handler_t ;


 int RW_READER ;
 scalar_t__ ZINJECT_DECRYPT_FAULT ;
 int ZI_NO_DVA ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zio_match_handler (int const*,int ,int ,TYPE_2__*,int) ;

int
zio_handle_decrypt_injection(spa_t *spa, const zbookmark_phys_t *zb,
    uint64_t type, int error)
{
 int ret = 0;
 inject_handler_t *handler;

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {

  if (spa != handler->zi_spa ||
      handler->zi_record.zi_cmd != ZINJECT_DECRYPT_FAULT)
   continue;

  if (zio_match_handler(zb, type, ZI_NO_DVA,
      &handler->zi_record, error)) {
   ret = error;
   break;
  }
 }

 rw_exit(&inject_lock);
 return (ret);
}
