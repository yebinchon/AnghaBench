
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* close ) (int ) ;} ;
struct TYPE_5__ {scalar_t__ position; scalar_t__ is_open; int user_data; TYPE_1__ op; } ;
typedef TYPE_2__ CdioDataSource_t ;


 int cdio_debug (char*) ;
 int stub1 (int ) ;

void
cdio_stream_close(CdioDataSource_t *p_obj)
{
  if (!p_obj) return;

  if (p_obj->is_open) {
    cdio_debug ("closed source...");
    p_obj->op.close(p_obj->user_data);
    p_obj->is_open = 0;
    p_obj->position = 0;
  }
}
