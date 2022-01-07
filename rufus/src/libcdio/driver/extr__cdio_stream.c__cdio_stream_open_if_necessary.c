
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* open ) (int ) ;} ;
struct TYPE_5__ {int is_open; scalar_t__ position; int user_data; TYPE_1__ op; } ;
typedef TYPE_2__ CdioDataSource_t ;


 int cdio_debug (char*) ;
 int cdio_warn (char*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static bool
_cdio_stream_open_if_necessary(CdioDataSource_t *p_obj)
{
  if (!p_obj) return 0;

  if (!p_obj->is_open) {
    if (p_obj->op.open(p_obj->user_data)) {
      cdio_warn ("could not open input stream...");
      return 0;
    } else {
      cdio_debug ("opened source...");
      p_obj->is_open = 1;
      p_obj->position = 0;
    }
  }
  return 1;
}
