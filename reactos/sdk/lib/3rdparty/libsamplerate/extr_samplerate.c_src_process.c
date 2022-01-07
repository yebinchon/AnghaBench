
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {double src_ratio; int input_frames; int output_frames; scalar_t__ output_frames_gen; scalar_t__ input_frames_used; int * data_in; int * data_out; } ;
struct TYPE_8__ {int (* vari_process ) (TYPE_1__*,TYPE_2__*) ;int (* const_process ) (TYPE_1__*,TYPE_2__*) ;scalar_t__ mode; int channels; double last_ratio; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;
typedef TYPE_2__ SRC_DATA ;


 int SRC_ERR_BAD_DATA ;
 int SRC_ERR_BAD_DATA_PTR ;
 int SRC_ERR_BAD_MODE ;
 int SRC_ERR_BAD_PROC_PTR ;
 int SRC_ERR_BAD_SRC_RATIO ;
 int SRC_ERR_BAD_STATE ;
 int SRC_ERR_DATA_OVERLAP ;
 double SRC_MAX_RATIO ;
 scalar_t__ SRC_MODE_PROCESS ;
 int fabs (double) ;
 scalar_t__ is_bad_src_ratio (double) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;

int
src_process (SRC_STATE *state, SRC_DATA *data)
{ SRC_PRIVATE *psrc ;
 int error ;

 psrc = (SRC_PRIVATE*) state ;

 if (psrc == ((void*)0))
  return SRC_ERR_BAD_STATE ;
 if (psrc->vari_process == ((void*)0) || psrc->const_process == ((void*)0))
  return SRC_ERR_BAD_PROC_PTR ;

 if (psrc->mode != SRC_MODE_PROCESS)
  return SRC_ERR_BAD_MODE ;


 if (data == ((void*)0))
  return SRC_ERR_BAD_DATA ;


 if (data->data_in == ((void*)0) || data->data_out == ((void*)0))
  return SRC_ERR_BAD_DATA_PTR ;


 if (is_bad_src_ratio (data->src_ratio))
  return SRC_ERR_BAD_SRC_RATIO ;

 if (data->input_frames < 0)
  data->input_frames = 0 ;
 if (data->output_frames < 0)
  data->output_frames = 0 ;

 if (data->data_in < data->data_out)
 { if (data->data_in + data->input_frames * psrc->channels > data->data_out)
  {

   return SRC_ERR_DATA_OVERLAP ;
   } ;
  }
 else if (data->data_out + data->output_frames * psrc->channels > data->data_in)
 {



  return SRC_ERR_DATA_OVERLAP ;
  } ;


 data->input_frames_used = 0 ;
 data->output_frames_gen = 0 ;


 if (psrc->last_ratio < (1.0 / SRC_MAX_RATIO))
  psrc->last_ratio = data->src_ratio ;


 if (fabs (psrc->last_ratio - data->src_ratio) < 1e-15)
  error = psrc->const_process (psrc, data) ;
 else
  error = psrc->vari_process (psrc, data) ;

 return error ;
}
