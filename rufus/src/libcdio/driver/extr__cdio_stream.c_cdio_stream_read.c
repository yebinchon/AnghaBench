
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef long ssize_t ;
struct TYPE_5__ {long (* read ) (int ,void*,size_t) ;} ;
struct TYPE_6__ {long position; int user_data; TYPE_1__ op; } ;
typedef TYPE_2__ CdioDataSource_t ;


 int _cdio_stream_open_if_necessary (TYPE_2__*) ;
 long stub1 (int ,void*,size_t) ;

ssize_t
cdio_stream_read(CdioDataSource_t* p_obj, void *ptr, size_t size, size_t nmemb)
{
  long read_bytes;

  if (!p_obj) return 0;
  if (!_cdio_stream_open_if_necessary(p_obj)) return 0;

  read_bytes = (p_obj->op.read)(p_obj->user_data, ptr, size*nmemb);
  p_obj->position += read_bytes;

  return read_bytes;
}
