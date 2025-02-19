
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_5__ {int (* seek ) (int ,scalar_t__,int) ;} ;
struct TYPE_6__ {scalar_t__ position; int user_data; TYPE_1__ op; } ;
typedef TYPE_2__ CdioDataSource_t ;


 int DRIVER_OP_ERROR ;
 int DRIVER_OP_UNINIT ;
 int _cdio_stream_open_if_necessary (TYPE_2__*) ;
 int cdio_warn (char*,scalar_t__,scalar_t__) ;
 int stub1 (int ,scalar_t__,int) ;

int
cdio_stream_seek(CdioDataSource_t* p_obj, off_t offset, int whence)
{
  if (!p_obj) return DRIVER_OP_UNINIT;

  if (!_cdio_stream_open_if_necessary(p_obj))

    return DRIVER_OP_ERROR;

  if (offset < 0) return DRIVER_OP_ERROR;
  if (p_obj->position < 0) return DRIVER_OP_ERROR;

  if (p_obj->position != offset) {



    p_obj->position = offset;
    return p_obj->op.seek(p_obj->user_data, offset, whence);
  }

  return 0;
}
