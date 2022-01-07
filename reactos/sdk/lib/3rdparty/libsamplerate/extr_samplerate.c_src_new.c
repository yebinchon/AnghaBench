
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int channels; int mode; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;


 int SRC_ERR_BAD_CHANNEL_COUNT ;
 int SRC_ERR_BAD_CONVERTER ;
 int SRC_ERR_MALLOC_FAILED ;
 int SRC_ERR_NO_ERROR ;
 int SRC_MODE_PROCESS ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int psrc_set_converter (TYPE_1__*,int) ;
 int src_reset (int *) ;

SRC_STATE *
src_new (int converter_type, int channels, int *error)
{ SRC_PRIVATE *psrc ;

 if (error)
  *error = SRC_ERR_NO_ERROR ;

 if (channels < 1)
 { if (error)
   *error = SRC_ERR_BAD_CHANNEL_COUNT ;
  return ((void*)0) ;
  } ;

 if ((psrc = calloc (1, sizeof (*psrc))) == ((void*)0))
 { if (error)
   *error = SRC_ERR_MALLOC_FAILED ;
  return ((void*)0) ;
  } ;

 psrc->channels = channels ;
 psrc->mode = SRC_MODE_PROCESS ;

 if (psrc_set_converter (psrc, converter_type) != SRC_ERR_NO_ERROR)
 { if (error)
   *error = SRC_ERR_BAD_CONVERTER ;
  free (psrc) ;
  psrc = ((void*)0) ;
  } ;

 src_reset ((SRC_STATE*) psrc) ;

 return (SRC_STATE*) psrc ;
}
