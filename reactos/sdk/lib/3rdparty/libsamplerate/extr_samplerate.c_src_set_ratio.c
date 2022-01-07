
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double last_ratio; int * const_process; int * vari_process; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;


 int SRC_ERR_BAD_PROC_PTR ;
 int SRC_ERR_BAD_SRC_RATIO ;
 int SRC_ERR_BAD_STATE ;
 int SRC_ERR_NO_ERROR ;
 scalar_t__ is_bad_src_ratio (double) ;

int
src_set_ratio (SRC_STATE *state, double new_ratio)
{ SRC_PRIVATE *psrc ;

 psrc = (SRC_PRIVATE*) state ;

 if (psrc == ((void*)0))
  return SRC_ERR_BAD_STATE ;
 if (psrc->vari_process == ((void*)0) || psrc->const_process == ((void*)0))
  return SRC_ERR_BAD_PROC_PTR ;

 if (is_bad_src_ratio (new_ratio))
  return SRC_ERR_BAD_SRC_RATIO ;

 psrc->last_ratio = new_ratio ;

 return SRC_ERR_NO_ERROR ;
}
