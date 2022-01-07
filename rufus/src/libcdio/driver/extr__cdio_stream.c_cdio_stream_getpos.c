
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int position; int is_open; } ;
typedef TYPE_1__ CdioDataSource_t ;


 int DRIVER_OP_UNINIT ;

off_t
cdio_stream_getpos(CdioDataSource_t* p_obj, off_t *i_offset)
{
  if (!p_obj || !p_obj->is_open) return DRIVER_OP_UNINIT;
  return *i_offset = p_obj->position;
}
