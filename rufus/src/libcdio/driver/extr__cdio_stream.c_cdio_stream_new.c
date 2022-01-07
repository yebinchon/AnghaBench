
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cdio_stream_io_functions ;
struct TYPE_4__ {int op; void* user_data; } ;
typedef TYPE_1__ CdioDataSource_t ;


 TYPE_1__* calloc (int,int) ;
 int cdio_assert (int ) ;
 int memcpy (int *,int const*,int) ;

CdioDataSource_t *
cdio_stream_new(void *user_data, const cdio_stream_io_functions *funcs)
{
  CdioDataSource_t *new_obj;

  new_obj = calloc (1, sizeof (CdioDataSource_t));
  cdio_assert (new_obj != ((void*)0));

  new_obj->user_data = user_data;
  memcpy(&(new_obj->op), funcs, sizeof(cdio_stream_io_functions));

  return new_obj;
}
