
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int end_of_input; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_DATA ;


 int src_delete (int *) ;
 int * src_new (int,int,int*) ;
 int src_process (int *,TYPE_1__*) ;

int
src_simple (SRC_DATA *src_data, int converter, int channels)
{ SRC_STATE *src_state ;
 int error ;

 if ((src_state = src_new (converter, channels, &error)) == ((void*)0))
  return error ;

 src_data->end_of_input = 1 ;

 error = src_process (src_state, src_data) ;

 src_delete (src_state) ;

 return error ;
}
