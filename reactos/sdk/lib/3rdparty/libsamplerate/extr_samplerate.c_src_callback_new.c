
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * src_callback_t ;
struct TYPE_2__ {void* user_callback_data; int * callback_func; int mode; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;


 int SRC_ERR_BAD_CALLBACK ;
 int SRC_MODE_CALLBACK ;
 int * src_new (int,int,int*) ;
 int src_reset (int *) ;

SRC_STATE*
src_callback_new (src_callback_t func, int converter_type, int channels, int *error, void* cb_data)
{ SRC_STATE *src_state ;

 if (func == ((void*)0))
 { if (error)
   *error = SRC_ERR_BAD_CALLBACK ;
  return ((void*)0) ;
  } ;

 if (error != ((void*)0))
  *error = 0 ;

 if ((src_state = src_new (converter_type, channels, error)) == ((void*)0))
  return ((void*)0) ;

 src_reset (src_state) ;

 ((SRC_PRIVATE*) src_state)->mode = SRC_MODE_CALLBACK ;
 ((SRC_PRIVATE*) src_state)->callback_func = func ;
 ((SRC_PRIVATE*) src_state)->user_callback_data = cb_data ;

 return src_state ;
}
