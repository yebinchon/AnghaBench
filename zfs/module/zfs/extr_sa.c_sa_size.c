
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
struct TYPE_8__ {int sa_size; int * sa_data_func; int sa_attr; int * sa_data; } ;
typedef TYPE_2__ sa_bulk_attr_t ;
typedef int sa_attr_type_t ;


 int ASSERT (TYPE_1__*) ;
 int SA_LOOKUP ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_attr_op (TYPE_1__*,TYPE_2__*,int,int ,int *) ;

int
sa_size(sa_handle_t *hdl, sa_attr_type_t attr, int *size)
{
 sa_bulk_attr_t bulk;
 int error;

 bulk.sa_data = ((void*)0);
 bulk.sa_attr = attr;
 bulk.sa_data_func = ((void*)0);

 ASSERT(hdl);
 mutex_enter(&hdl->sa_lock);
 if ((error = sa_attr_op(hdl, &bulk, 1, SA_LOOKUP, ((void*)0))) != 0) {
  mutex_exit(&hdl->sa_lock);
  return (error);
 }
 *size = bulk.sa_size;

 mutex_exit(&hdl->sa_lock);
 return (0);
}
