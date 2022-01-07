
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channels; int * const_process; int * vari_process; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;


 int SRC_ERR_BAD_PROC_PTR ;
 int SRC_ERR_BAD_STATE ;

int
src_get_channels (SRC_STATE *state)
{ SRC_PRIVATE *psrc ;

 psrc = (SRC_PRIVATE*) state ;

 if (psrc == ((void*)0))
  return SRC_ERR_BAD_STATE ;
 if (psrc->vari_process == ((void*)0) || psrc->const_process == ((void*)0))
  return SRC_ERR_BAD_PROC_PTR ;

 return psrc->channels ;
}
