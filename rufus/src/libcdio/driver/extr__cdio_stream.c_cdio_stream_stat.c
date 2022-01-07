
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_5__ {int (* stat ) (int ) ;} ;
struct TYPE_6__ {int user_data; TYPE_1__ op; } ;
typedef TYPE_2__ CdioDataSource_t ;


 int _cdio_stream_open_if_necessary (TYPE_2__*) ;
 int stub1 (int ) ;

off_t
cdio_stream_stat(CdioDataSource_t *p_obj)
{
  if (!p_obj) return -1;
  if (!_cdio_stream_open_if_necessary(p_obj)) return -1;

  return p_obj->op.stat(p_obj->user_data);
}
