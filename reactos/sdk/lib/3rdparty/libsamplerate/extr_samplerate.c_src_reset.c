
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double last_position; double last_ratio; int error; scalar_t__ saved_frames; int * saved_data; int (* reset ) (TYPE_1__*) ;} ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;


 int SRC_ERR_BAD_STATE ;
 int SRC_ERR_NO_ERROR ;
 int stub1 (TYPE_1__*) ;

int
src_reset (SRC_STATE *state)
{ SRC_PRIVATE *psrc ;

 if ((psrc = (SRC_PRIVATE*) state) == ((void*)0))
  return SRC_ERR_BAD_STATE ;

 if (psrc->reset != ((void*)0))
  psrc->reset (psrc) ;

 psrc->last_position = 0.0 ;
 psrc->last_ratio = 0.0 ;

 psrc->saved_data = ((void*)0) ;
 psrc->saved_frames = 0 ;

 psrc->error = SRC_ERR_NO_ERROR ;

 return SRC_ERR_NO_ERROR ;
}
