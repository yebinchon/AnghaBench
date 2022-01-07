
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* free ) (int *) ;} ;
struct TYPE_7__ {int * user_data; TYPE_1__ op; } ;
typedef TYPE_2__ CdioDataSource_t ;


 int cdio_stream_close (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int stub1 (int *) ;

void
cdio_stream_destroy(CdioDataSource_t *p_obj)
{
  if (!p_obj) return;

  cdio_stream_close(p_obj);

  p_obj->op.free(p_obj->user_data);
  p_obj->user_data = ((void*)0);
  free(p_obj);
}
